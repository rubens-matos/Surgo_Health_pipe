@smoke
Feature: Login on Admin

  @adminLogin
  Scenario Outline: Try to login on admin portal successfull
    Given I access the login page using a valid login
    When I fill my credentials with: '<mail>' and '<pass>'
    Then I should see the home page for user

    Examples: 
      | mail                 | pass             |
      | rmatos@teamarrayo.com | V5rItsJVEKcufxyHRERRL |

  @adminInvalidLogin
  Scenario Outline: Try to login on admin portal using invalid credentials
    Given I access the login page
    When I submit my credentials with: '<email>' and '<password>'
    Then I should see the message: '<message>'

    Examples: 
      | email                 | password        | message                   |
      | test@mail.com.br      | Rub3n5r@        | Invalid email or password |
      | rmatos@teamarrayo.com | 123457289       | Invalid email or password |
      | test@teamarrayo.com   | 0987654321      | Invalid email or password |
