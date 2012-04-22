Given /^the following profiles exist:$/ do |table|
  data = table.hashes
  data.each do |row|
    FactoryGirl.create(:profile, :email => row[:email])
  end
end

Given /^a profile exists$/ do
  @profile = FactoryGirl.create(:profile)
end

When /^I fill in the form:$/ do |table|
  data = table.hashes
  data.each do |row|
    fill_in "profile_firstname", :with => row[:firstname]
    fill_in "profile_surname", :with => row[:surname]
    fill_in "profile_username", :with => row[:username]
    fill_in "profile_email", :with => row[:email]
    fill_in "profile_website", :with => row[:website]
    fill_in "profile_twitter", :with => row[:twitter]
    fill_in "profile_github", :with => row[:github]
    click_button "Create Profile"

    @profile = Profile.find_by_username(row[:username])
  end
end

When /^I navigate to the homepage$/ do
  visit '/'
end

When /^I add a new profile$/ do
  within "#profiles" do 
    click_link 'new_profile'
  end
end

Then /^I can see the profile avatar$/ do
  avatar_displayed?(@profile)  
end

Then /^I can see all user profiles$/ do
  profiles = Profile.all

  profiles.each do |profile|
    avatar_displayed?(profile)
  end
end

Then /^I should see the new profile$/ do
  within "#profile" do
    page.should have_content(@profile.firstname)
  end
end

