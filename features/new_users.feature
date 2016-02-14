Feature: Adding 3 new users to my project

Background: on Log in pageone
Given I have registered "SHTN_1" user
  And I have registered "SHTN_2" user
  And I have registered "SHTN_3" user


  Scenario: add my users
    When I create new project
    And I add my users
  Then I have registered user