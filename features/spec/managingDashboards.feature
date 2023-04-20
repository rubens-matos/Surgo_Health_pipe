@crud
Feature: Edit researchers on Dashboard

  @saveDasboard
  Scenario: Saving research on dashboard
    Given I on home page of Surgo Health
    When I click on Map icon and select a theme
    And I select a state and click on Save button
    Then I should see it on Saved Dashboards

  @deleteDasboard
  Scenario: Deleting research on dashboard saved
    Given I logged on home page of Surgo Health
    When I select research saved and click on option to delete
    And I click on Delete option
    Then I should delete it from the Dashboards
