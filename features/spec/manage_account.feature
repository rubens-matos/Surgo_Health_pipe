@regration
Feature: Manage accounts and companies

  Background:
    Given I am on Surgo Admin portal "rmatos@teamarrayo.com" and "V5rItsJVEKcufxyHRERRL"

  @addUser
  Scenario: Add an account user
    When I click on Add account
    And I fill the data to new user and click on Add account button
    Then I should see the new user registred

  @editUser
  Scenario: Edit an account user
    When I click Edit button an user
    And I edit all datas from user
    Then I should see the data edited

  @deleteUser
  Scenario: Delete an account user
    When I click Delete button an user
    Then the user is deleted from the portal

  @addRepeatUser
  Scenario: Add an repeated account user
    When I click To Ádd account
    And I fill the data to repeated user and click on Add account button
    Then I should see the nthe allert message

  @addNewCompany
  Scenario: Add a new company
    When I click Add new company button
    And I fill the name from the new company
    Then the new company is added on the system

  @addRepeatedCompany
  Scenario: Add a repeated company's name
    When I click on Add new company button
    And I fill the repeated name from the new company
    Then the new system show the message exception
