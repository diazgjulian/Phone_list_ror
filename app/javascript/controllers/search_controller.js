import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
 static targets = [ "query", "contacts" ]

 submit() {
    const value = this.queryTarget.value
    fetch(`/?query=${value}`, {
      headers: { accept: 'application/json'}
    }).then((response) => response.json())
    .then(data => { 
    var contactHTML = "";
    var contactArray = Object.values(data)[0]
    contactArray.forEach(contact => {
      contactHTML += this.contactTemplate(contact)
    });
    this.contactsTarget.innerHTML = contactHTML;
  });  
}
contactTemplate(contact) {
  return `<div>
  <h4>${contact.name} <small>${contact.glass}</small></h4>
  <p>${contact.preparation}</p>
  </div> `
}


}
