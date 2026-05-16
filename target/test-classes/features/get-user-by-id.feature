Feature: Obtener usuario por ID

Background:
    Given url baseUrl

Scenario: Validar usuario por ID y errores

    # ======================
    # CREAR USUARIO PARA PROBAR
    # ======================
    * def email = 'qa_' + java.util.UUID.randomUUID() + '@mail.com'

    Given path '/usuarios'
    And request
    """
    {
      "nome": "QA User",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """
    When method POST
    Then status 201

    * def userId = response._id


    # ======================
    # GET USUARIO OK
    # ======================
    Given path '/usuarios', userId
    When method GET
    Then status 200
    And match response._id == userId


    # ======================
    # GET USUARIO ERROR
    # ======================
    Given path '/usuarios-error'
    When method GET
    Then status 405
    And match response.message contains 'Não é possível'