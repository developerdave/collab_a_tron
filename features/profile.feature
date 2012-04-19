Feature: User profiles

  Scenario: Display user profile
    Given a profile exists
    When I navigate to the homepage
    Then I can see the profile avatar