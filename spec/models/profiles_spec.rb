require 'spec_helper'

describe Profile do
  it "returns the display name" do
    profile = FactoryGirl.create(:profile, 
      :firstname => "Dave",
      :surname   => "Green",
      :username  => "developerdave")

    profile.display_name.should eq("Dave Green (developerdave)")
  end
end