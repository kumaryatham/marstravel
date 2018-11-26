require 'spec_helper'

describe "travellers/edit" do
  before(:each) do
    @traveller = assign(:traveller, stub_model(Traveller,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit traveller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", traveller_path(@traveller), "post" do
      assert_select "input#traveller_name[name=?]", "traveller[name]"
      assert_select "input#traveller_email[name=?]", "traveller[email]"
    end
  end
end
