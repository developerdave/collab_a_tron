Feature: User profiles

  Scenario: Display user profile
    Given a profile exists
    When I navigate to the homepage
    Then I can see the profile avatar

  Scenario: Display multiple user profiles
    Given the following profile avatars exist:
      | avatar_url                                                      | 
      | http://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50 |
      | http://www.gravatar.com/avatar/00000000000000000000000000000000 |
    When I navigate to the homepage
    Then I can see all user profiles