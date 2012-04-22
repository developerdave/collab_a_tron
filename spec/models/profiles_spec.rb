require 'spec_helper'

describe Profile do
  it "returns the display name" do
    profile = FactoryGirl.create(:profile, 
      :firstname => "Dave",
      :surname   => "Green",
      :username  => "developerdave")

    profile.display_name.should eq("Dave Green (developerdave)")
  end

  context "profile validation" do 
    before(:each) do
      @profile = Profile.new
    end

    it "should be invalid without a firstname" do
      @profile.should_not be_valid
      @profile.errors_on(:firstname).should include "can't be blank"
    end

    it "should be invalid without a surname" do
      @profile.should_not be_valid
      @profile.errors_on(:surname).should include "can't be blank"
    end

    it "should be invalid without a username" do
      @profile.should_not be_valid
      @profile.errors_on(:username).should include "can't be blank"
    end

    it "should be invalid without a email" do
      @profile.should_not be_valid
      @profile.errors_on(:email).should include "can't be blank"
    end

    it "should not allow duplicate email" do
      FactoryGirl.create(:profile, :email => "test@example.com")
      @profile = FactoryGirl.build(:profile, :email => "test@example.com")
      @profile.should_not be_valid
      @profile.errors_on(:email).should include "has already been taken"
    end

    it "should not allow duplicate username" do
      FactoryGirl.create(:profile, :username => "auser")
      @profile = FactoryGirl.build(:profile, :username => "auser")
      @profile.should_not be_valid
      @profile.errors_on(:username).should include "has already been taken"
    end

    it "should not require me to have a website" do 
      @profile.errors_on(:website).should be_empty
    end

    it "should not require me to enter twitter handle" do
      @profile.errors_on(:twitter).should be_empty
    end
  end
end