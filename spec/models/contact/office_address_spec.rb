require 'spec_helper'

module Contact
  describe OfficeAddress do

    before(:each) do
      @office_address = FactoryGirl.create(:office_address)
    end

    it "has a valid factory" do
      @office_address.should be_valid
    end

    it "is invalid without a title" do
      FactoryGirl.build(:office_address, title: nil).should_not be_valid
    end

    it "is invalid without an address" do
      FactoryGirl.build(:office_address, address: nil).should_not be_valid
    end

    it "is invalid without a postcode" do
      FactoryGirl.build(:office_address, postcode: nil).should_not be_valid
    end

    it "returns the address and telephone number as strings" do
      @office_address.title.should == "Test"
      @office_address.address.should == "123 London Road"
      @office_address.postcode.should == "SE3 7JS"
    end

  end
end