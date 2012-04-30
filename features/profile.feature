Feature: User profiles

  Scenario: Display user profile
    Given a profile exists with the summary info:
      | website | twitter        | github |
      |         | @developerdave |        | 
    Given a profile exists
    When I navigate to the homepage
    Then I can see the profile avatar
    When I select an avatar
    Then I should see the profile page

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
      | firstname | surname | username | email             | role      | website                 | twitter       | github        |
      | Steve     | Smith   | smithy   | steve@example.com | Developer | www.developerdave.co.uk | developerdave | developerdave |
    Then I should see the new profile

  Scenario: Display profile summary info
    Given a profile exists with the summary info:
      | website                 | twitter        | github        |
      | www.developerdave.co.uk | @developerdave | developerdave |
    When I view the profile
    Then I should see the profile summary info

  Scenario: Does not display website in summary info
    Given a profile exists with the summary info:
      | website | twitter        | github        |
      |         | @developerdave | developerdave |
    When I view the profile
    Then I should not see website within the profile summary info

  Scenario: Does not display twitter in summary info
    Given a profile exists with the summary info:
      | website                 | twitter | github        |
      | www.developerdave.co.uk |         | developerdave |
    When I view the profile
    Then I should not see twitter within the profile summary info

  Scenario: Does not display github in summary info
    Given a profile exists with the summary info:
      | website                 | twitter        | github |
      | www.developerdave.co.uk | @developerdave |        |
    When I view the profile
    Then I should not see github within the profile summary info