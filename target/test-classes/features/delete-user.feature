Feature: Eliminar usuario

Background:
    Given url baseUrl

Scenario: Delete usuario validando casos

    # crear usuario
    * def email = 'qa_' + java.util.UUID.randomUUID() + '@mail.com'

    Given path '/usuarios'
    And request
    """
    {
      "nome": "QA Delete",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """
    When method POST
    Then status 201

    * def userId = response._id


    # ======================
    # DELETE OK
    # ======================
    Given path '/usuarios', userId
    When method DELETE
    Then status 200


    # ======================
    # DELETE ERROR
    # ======================
    Given path '/usuarios/invalid-id-999'
    When method DELETE
    Then status 200
    And match response.message contains 'registro'