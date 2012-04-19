Given /^a profile exists$/ do
  @profile = Profile.create! firstname: 'Dave', surname: 'Green', avatar_url: 'http://www.google.co.uk'
end

When /^I navigate to the homepage$/ do
  visit '/'
end

Then /^I can see the profile avatar$/ do
  within '#profiles a' do 
    page.should have_content(@profile.firstname)
  end
end