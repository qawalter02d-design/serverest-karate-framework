Feature: Listar usuarios

Background:
    Given url 'https://serverest.dev'

Scenario: Listar usuarios y validar todo

    # ======================
    # CASO EXITOSO (200)
    # ======================
    Given path '/usuarios'
    When method GET
    Then status 200

    # validación básica
    And match response.quantidade == '#number'
    And match response.usuarios == '#array'

    # ======================
    # SCHEMA
    # ======================
    * def schema = read('classpath:schemas/getUsersSchema.json')
    And match each response.usuarios == schema


    # ======================
    # CASO ERROR (404)
    # ======================
    Given path '/usuarios-error'
    When method GET
    Then status 405
    And match response.message contains 'Não é possível'