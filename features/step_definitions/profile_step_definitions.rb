Given /^the following profile avatars exist:$/ do |table|
  data = table.hashes
  data.each do |row|
    FactoryGirl.create(:profile, :avatar_url => row[:avatar_url])
  end
end

Given /^a profile exists$/ do
  @profile = FactoryGirl.create(:profile)
end

When /^I navigate to the homepage$/ do
  visit '/'
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

