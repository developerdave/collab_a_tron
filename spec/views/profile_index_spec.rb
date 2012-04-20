require 'spec_helper'

describe "profiles/index" do
  it "displays all profiles" do
    assign(:profiles, [
      stub_model(
        Profile, 
        :firstname => "Dave", 
        :surname => "Green", 
        :username => "developerdave"
      ),
      stub_model(
        Profile, 
        :firstname => "Tom",
        :surname => "Dittmer",
        :username => "TheDitt"
      )
    ])
    render
    
    display_name = "Dave Green (developerdave)"
    rendered.should have_css("li a[title='#{display_name}']")
  end  
end