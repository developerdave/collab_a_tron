Given /^the following profiles exist:$/ do |table|
  data = table.hashes
  data.each do |row|
    FactoryGirl.create(:profile, :email => row[:email])
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

