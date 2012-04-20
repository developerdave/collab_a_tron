Given /^a profile exists$/ do
  @profile = FactoryGirl.create(:profile)
end

When /^I navigate to the homepage$/ do
  visit '/'
end

Then /^I can see the profile avatar$/ do
  within '#profiles' do 
    page.should have_css("a[title='#{@profile.display_name}']")
    page.should have_css("a img[src='#{@profile.avatar_url}']")
  end
end