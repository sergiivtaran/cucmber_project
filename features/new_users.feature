Feature: Adding 3 new users to my project

Background: on Log in pageone
Given I have registered "3" new users

  Scenario: add my users
    When I create new project
    And I add my users
  Then I have registered user