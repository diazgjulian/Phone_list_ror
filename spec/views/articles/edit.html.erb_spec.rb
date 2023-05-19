require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      first_name: "John",
      last_name: "Doe",
      phone_number: "987654321"
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input[name=?]", "contact[first_name]"
      assert_select "input[name=?]", "contact[last_name]"
      assert_select "input[name=?]", "contact[phone_number]"

    end
  end
end
