require 'rails_helper'

RSpec.describe "contactss/index", type: :view do
  before(:each) do
    assign(:contactss, [
      Contact.create!(
        first_name: "John",
        last_name: "Doe",
        phone_number: "987654321"
      ),
      Contact.create!(
        first_name: "FirstName",
        last_name: "LastName",
        phone_number: "123456789"
      )
    ])
  end

  xit "renders a list of contactss" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
