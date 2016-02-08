Feature: Log in

  Background: on Log in pageone
    Given I have registered new user

  Scenario: Positive log in
    When I am logged out
    And on Log in pageone
    And I submit valid credentials1
##   Given on Log in pageone
# When I submit valid credentials1
    Then I am logged in

  Scenario: Positive log out
        Then I am logged out
#
#  Scenario: Change password
#      Given I have registered new user