require 'spec_helper'

module Contact
  describe PromotedLink do

    before(:each) do
      @promoted_link = FactoryGirl.create(:promoted_link)
    end

    it "has a valid factory" do
      @promoted_link.should be_valid
    end

    it "is invalid without a title" do
      FactoryGirl.build(:promoted_link, title: nil).should_not be_valid
    end

    it "is invalid without text" do
      FactoryGirl.build(:promoted_link, text: nil).should_not be_valid
    end

    it "is invalid without a url" do
      FactoryGirl.build(:promoted_link, url: nil).should_not be_valid
    end

    it "is invalid without an image" do
      FactoryGirl.build(:promoted_link, image_file_name: nil).should_not be_valid
    end

    it "returns the address and telephone number as strings" do
      @promoted_link.title.should == "Test"
      @promoted_link.text.should == "Lorem ipsum omnia mutantur nihil interit"
      @promoted_link.url.should == "http://www.example.com"
      @promoted_link.image_file_name.should == "image.jpg"
    end

  end
end