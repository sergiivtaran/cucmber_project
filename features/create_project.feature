Feature: Creation of New Project

Background: on Log in pageone
    Given I have registered new user
  Scenario: New project creation
    When I create new project
    Then I have registered user

