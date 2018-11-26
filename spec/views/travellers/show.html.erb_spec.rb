require 'spec_helper'

describe "travellers/show" do
  before(:each) do
    @traveller = assign(:traveller, stub_model(Traveller,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
