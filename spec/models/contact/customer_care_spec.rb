require 'spec_helper'

module Contact
  describe CustomerCare do

    before(:each) do
      @customer_care = FactoryGirl.create(:customer_care)
    end

    it "has a valid factory" do
      @customer_care.should be_valid
    end

    it "is invalid without an address" do
      FactoryGirl.build(:customer_care, address: nil).should_not be_valid
    end

    it "is invalid without a telephone number" do
      FactoryGirl.build(:customer_care, telephone: nil).should_not be_valid
    end

    it "returns the address and telephone number as strings" do
      @customer_care.address.should == "123 London Road"
      @customer_care.telephone.should == "02077123456"
    end

    it "is invalid if a Customer Care entry already exists" do
      expect { FactoryGirl.create(:customer_care) }.to raise_error
    end

  end
end
