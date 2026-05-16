Feature: Update user

Background:
    Given url 'https://serverest.dev'
    * def email = 'qa_' + java.util.UUID.randomUUID() + '@mail.com'

Scenario: Update user successfully

    # 1. Crear usuario primero
    Given path '/usuarios'
    And request
    """
    {
        "nome": "User QA",
        "email": "#(email)",
        "password": "123456",
        "administrador": "true"
    }
    """
    When method POST
    Then status 201
    * def userId = response._id

    # 2. Actualizar usuario creado
    Given path '/usuarios', userId
    And request
    """
    {
        "nome": "User QA Updated",
        "email": "#(email)",
        "password": "123456",
        "administrador": "true"
    }
    """
    When method PUT
    Then status 200

    # ================================
    # VALIDACIÓN DE SCHEMA
    # ================================
    * def schema = read('classpath:schemas/updateUserSchema.json')
    And match response == schema