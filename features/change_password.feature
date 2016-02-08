Feature: Change Password
  Background: on Log in pageone
    Given I have registered new user

  Scenario: Positive password change
#    When I am logged out
#    And on Log in pageone
#    And I submit valid credentials1
    And I have changed password
#    And I am logged in