Feature: Login on Admin

  @saveDasboard
  Scenario: Saving research on dashboard
    Given I on home page of Surgo Health
    When I click on Map icon and select a theme
    And I select a state and click on Save button
    Then I should see it on Saved Dashboards
