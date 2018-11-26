require 'spec_helper'

describe "travellers/new" do
  before(:each) do
    assign(:traveller, stub_model(Traveller,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new traveller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", travellers_path, "post" do
      assert_select "input#traveller_name[name=?]", "traveller[name]"
      assert_select "input#traveller_email[name=?]", "traveller[email]"
    end
  end
end
