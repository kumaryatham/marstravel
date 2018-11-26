require 'spec_helper'

describe "travellers/index" do
  before(:each) do
    assign(:travellers, [
      stub_model(Traveller,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(Traveller,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of travellers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
