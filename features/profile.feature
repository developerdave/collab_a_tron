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

  Scenario: Create profile
    When I navigate to the homepage
    And I add a new profile
    And I fill in the form:
      | firstname | surname | username | email             | website                 | twitter       | github        |
      | Steve     | Smith   | smithy   | steve@example.com | www.developerdave.co.uk | developerdave | developerdave |
    Then I should see the new profile

  Scenario: Display profile summary info
    Given a profile exists with the summary info:
      | website                 | twitter        | github        |
      | www.developerdave.co.uk | @developerdave | developerdave |
    When I view the profile
    Then I should see the profile summary info