Feature: Eliminar usuario

Background:
    Given url 'https://serverest.dev'

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
    Given path '/usuarios/' + userId
    When method DELETE

    * assert responseStatus == 200 || responseStatus == 503


    # ======================
    # DELETE ERROR
    # ======================
    Given path '/usuarios/invalid-id-999'
    When method DELETE
    Then status 200
    And match response.message contains 'Nenhum'