Feature: Gestión de Usuarios en ServeRest

Background:
  Given url 'https://serverest.dev'

Scenario: Crear un usuario exitosamente
  * def TestData = Java.type('utils.TestData')
  * def email = TestData.randomEmail()

  Given path '/usuarios'
  And request
  """
  {
    "nome": "Usuario QA",
    "email": "#(email)",
    "password": "123456",
    "administrador": "true"
  }
  """
  When method POST
  Then status 201

  * def schema = read('classpath:schemas/createUserSchema.json')
  And match response == schema