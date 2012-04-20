Feature: User profiles

  Scenario: Display user profile
    Given a profile exists
    When I navigate to the homepage
    Then I can see the profile avatar

  Scenario: Display multiple user profiles
    Given the following profiles exist:
      | email             | 
      | dave@example.com  |
      | simon@example.com |
    When I navigate to the homepage
    Then I can see all user profiles

  Scenario: Add new profile
    When I navigate to the homepage
    And I add a new profile
    And I fill in the form:
      | firstname | surname | username | email             |
      | Steve     | Smith   | smithy   | steve@example.com |