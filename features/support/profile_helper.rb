module ProfileHelper
  def avatar_displayed?(profile)
    within '#profiles ul' do 
      page.should have_css("li a[title='#{profile.display_name}']")
      page.should have_css("li a img[src='#{profile.gravatar_url}']")
    end
  end
end
World(ProfileHelper)