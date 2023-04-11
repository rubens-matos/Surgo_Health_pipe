Feature: Login as user Surgo Health

  @surgoLogin
  Scenario Outline: Try to login on Surgo portal
    Given I access login Surgo Health page
    When I inform credentials with: '<mail>' and '<pass>'
    Then I should see the home page Surgo Health
Examples: 
      | mail                 | pass                   |
      | rmatos@teamarrayo.com | Rub3n5r@              |

 @InvalidLogin
  Scenario Outline: Try to use invalid login on Surgo Health
    Given I access using invalid login Surgo Health
    When I submit the invalid credentials with: '<email>' and '<password>'
    Then I should see the allert message: '<message>'

    Examples: 
      | email                 | password        | message                   |
      | test@mail.com.br      | Rub3n5r@        | Invalid email or password |
      | rmatos@teamarrayo.com | 123457289       | Invalid email or password |
      | test@teamarrayo.com   | 0987654321      | Invalid email or password |