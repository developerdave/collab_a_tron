Given /^a profile exists with the summary info:$/ do |table|
  row = table.hashes.first
  @profile = FactoryGirl.create(:profile, 
    :job_role => row[:job_role],
    :website  => row[:website],
    :twitter  => row[:twitter],
    :github   => row[:github])
end

Given /^the following profiles exist:$/ do |table|
  data = table.hashes
  data.each do |row|
    FactoryGirl.create(:profile, :email => row[:email])
  end
end

Given /^a profile exists$/ do
  @profile = FactoryGirl.create(:profile)
end

When /^I select an avatar$/ do
  within ".profile-item" do
    page.find(:css, 'a').click
  end
end

When /^I view the profile$/ do
  visit profile_path @profile
end

When /^I fill in the form:$/ do |table|
  data = table.hashes
  data.each do |row|
    fill_in "profile_firstname", :with => row[:firstname]
    fill_in "profile_surname", :with => row[:surname]
    fill_in "profile_username", :with => row[:username]
    fill_in "profile_email", :with => row[:email]
    fill_in "profile_job_role", :with => row[:role]
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
  within ".profile-wall" do 
    click_link 'new_profile'
  end
end

Then /^I should see the profile summary info$/ do
  within ".profile" do
    page.should have_css("li.website")
    page.should have_css("li.twitter")
    page.should have_css("li.github")
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
  page.should have_content("#{@profile.firstname} #{@profile.surname}")
  page.should have_content(@profile.job_role)
  page.should have_css(".profile-avatar")
end

Then /^I should not see website within the profile summary info$/ do
  page.should_not have_css("li.website")
end

Then /^I should not see twitter within the profile summary info$/ do
  page.should_not have_css("li.twitter")
end

Then /^I should not see github within the profile summary info$/ do
  page.should_not have_css("li.github")
end

Then /^I should see the profile page$/ do
  page.should have_css("section.profile")
end

