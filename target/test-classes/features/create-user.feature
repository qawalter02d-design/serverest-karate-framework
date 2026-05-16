Feature: Gestión de Usuarios en ServeRest

Scenario: Crear un usuario exitosamente

Background:
  Given url 'https://serverest.dev'
  And path '/usuarios'

  # =========================
  # UTILIDAD (PUNTO 6)
  # =========================
  * def TestData = Java.type('utils.TestData')
  * def email = TestData.randomEmail()

  # =========================
  # REQUEST
  # =========================
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

  # =========================
  # SCHEMA (PUNTO 4 - NO SE TOCA)
  # =========================
  * def schema = read('classpath:schemas/createUserSchema.json')
  And match response == schema