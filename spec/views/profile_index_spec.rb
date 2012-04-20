require 'spec_helper'

describe "profiles/index" do
  it "displays all profiles" do
    assign(:profiles, [
      stub_model(Profile, :firstname => "Dave"),
      stub_model(Profile, :firstname => "Tom")
    ])
    render
    
    rendered.should have_content("Dave")
  end  
end