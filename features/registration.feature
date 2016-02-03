Feature: Registration
  we should register new user

  Scenario: Registration

  Given on Registration page
    When I submit valid data
    Then I have registered user
