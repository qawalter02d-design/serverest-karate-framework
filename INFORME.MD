Informe de Estrategia de Automatización QA – API ServeRest
1. Objetivo de la automatización

El objetivo de este proyecto es diseñar e implementar una suite de pruebas automatizadas para la API de usuarios de ServeRest (https://serverest.dev/), con el fin de validar el correcto funcionamiento de los endpoints REST mediante pruebas funcionales.

Se busca asegurar la calidad de los servicios, validando respuestas HTTP, estructura de datos y comportamiento esperado de la API.

2. Alcance de las pruebas

La automatización se enfoca en pruebas de servicios REST relacionadas con el módulo de usuarios:

Creación de usuarios (POST)
Consulta de usuarios (GET)
Validación de usuarios por ID
Manejo de respuestas exitosas y errores
Validación de estructura JSON en las respuestas
3. Herramienta utilizada
Karate DSL: Framework principal para automatización de APIs
Java 17: Lenguaje base del proyecto
Maven: Gestión de dependencias y ejecución del proyecto
JUnit 5: Ejecución de casos de prueba
VS Code / IntelliJ: Entorno de desarrollo
4. Estrategia de automatización

La estrategia está basada en un enfoque de Testing de API por capas funcionales, priorizando la validación de servicios críticos.

Se implementaron los siguientes principios:

4.1 Enfoque BDD (Behavior Driven Development)

Se utilizan archivos .feature con sintaxis Gherkin, lo que permite describir los escenarios en un lenguaje entendible tanto para QA como para stakeholders.

Ejemplo:

Given: preparación del request
When: ejecución del endpoint
Then: validación de resultados
4.2 Organización del proyecto

El proyecto está estructurado de la siguiente manera:

features/ → Casos de prueba escritos en Karate
runners/ → Clases Java para ejecución de pruebas
karate-config.js → Configuración global del framework
pom.xml → Gestión de dependencias Maven
4.3 Validaciones aplicadas

Las pruebas incluyen validaciones como:

Código de respuesta HTTP (200, 201, 400, 404)
Validación de campos obligatorios en el JSON
Verificación de datos en la respuesta
Manejo de respuestas negativas (casos de error)
4.4 Diseño de pruebas

Se aplicó un diseño basado en:

Pruebas positivas (casos exitosos)
Pruebas negativas (validación de errores)
Reutilización de escenarios
Ejecución automatizada por suite
5. Patrón de automatización utilizado
✔ BDD (Behavior Driven Development)

Permite escribir pruebas legibles en formato Gherkin, facilitando la comunicación entre QA, desarrollo y negocio.

✔ Separación de responsabilidades
Features → lógica de prueba
Runner → ejecución
Configuración → parámetros globales
✔ Modularidad

Cada endpoint se prueba de forma independiente, permitiendo escalabilidad del framework.

6. Estrategia de ejecución

Las pruebas se ejecutan mediante Maven:

mvn test

Esto permite la integración continua y ejecución automatizada de toda la suite.

7. Conclusión

La automatización implementada garantiza la validación funcional de la API de usuarios de ServeRest mediante un enfoque estructurado, escalable y mantenible.

El uso de Karate DSL permite reducir la complejidad del código y mejorar la legibilidad de los escenarios de prueba.