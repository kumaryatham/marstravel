require 'spec_helper'

describe Traveller do
  before do
    @traveller = Traveller.new( name: 'abcdef', email:'xxxx.xxxx@gmail.com' )
  end

  subject { @traveller }

  it { should respond_to(:email) }
  it { should be_valid }

  describe "when id is not present" do
    before { @traveller.name = '' }
    it { should_not be_valid }
  end

  describe "when customer id is already taken" do
    before do
      traveller_with_same_name = @traveller.dup
      traveller_with_same_name.name = @traveller.name.upcase
      traveller_with_same_name.save
    end

    it { should_not be_valid }
  end
end
