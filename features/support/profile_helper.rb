module ProfileHelper
  def avatar_displayed?(profile)
    within '#profiles' do 
      page.should have_css("a[title='#{profile.display_name}']")
      page.should have_css("a img[src='#{profile.avatar_url}']")
    end
  end
end
World(ProfileHelper)