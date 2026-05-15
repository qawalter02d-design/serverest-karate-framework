Feature: Users API

Scenario: Get users
  Given url 'https://serverest.dev/usuarios'
  When method GET
  Then status 200