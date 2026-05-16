# Karate API Automation Framework - ServeRest

## 📌 Descripción

Framework profesional de automatización de pruebas API desarrollado con Karate DSL para la API pública ServeRest. Este proyecto implementa pruebas automatizadas para validar operaciones CRUD, esquemas JSON, manejo de datos dinámicos, y escenarios positivos y negativos.

El objetivo del framework es demostrar una arquitectura base escalable para automatización de pruebas API en entornos reales de empresa.

## 🚀 Tecnologías utilizadas

- Java 11+
- Maven
- Karate DSL
- JUnit 5
- API ServeRest (https://serverest.dev)

## 🏗️ Arquitectura del proyecto

src/test/java
├── runners
│ └── TestRunner.java
├── utils
│ └── TestData.java
├── karate-config.js

src/test/resources
├── features
│ ├── create-user.feature
│ ├── get-users.feature
│ ├── get-user-by-id.feature
│ ├── update-user.feature
│ ├── delete-user.feature
│
├── schemas
│ ├── createUserSchema.json
│ ├── getUsersSchema.json
│ ├── updateUserSchema.json

## ⚙️ Instalación y ejecución

Clonar repositorio:
git clone <URL_DEL_REPO>
cd serverest-karate-framework

Ejecutar pruebas:
mvn clean test

## 🧪 Tipos de pruebas implementadas

- CRUD completo de usuarios (Create, Read, Update, Delete)
- Validación de status codes HTTP
- Validación de esquema JSON en respuestas
- Validación de estructura de datos
- Escenarios positivos y negativos
- Manejo de datos dinámicos para evitar duplicación

## 🧠 Gestión de datos de prueba

TestData.randomEmail()
TestData.randomName()

Esto permite:
- Evitar duplicación de datos
- Garantizar ejecución independiente de tests
- Mejorar mantenibilidad del framework

## 📊 Reportes de ejecución

Ejecutar:
mvn test

Reportes generados en:
target/karate-reports/

Archivo principal:
overview-features.html

## 🔄 CI/CD (Preparado)

Este proyecto está listo para integración con:

- GitHub Actions
- Jenkins
- GitLab CI

Ejecución en pipeline:
mvn clean test

## 📌 Buenas prácticas aplicadas

- Separación de capas (features, schemas, utils)
- Uso de datos dinámicos
- Validación de schema JSON
- Reutilización de código
- Estructura escalable de framework QA
- Cobertura de escenarios positivos y negativos

## 👨‍💻 Autor

**Ing. Walter Enrique Díaz Castillo**  
QA Automation Engineer | API Automation | Karate DSL  
Proyecto de automatización de pruebas API - ServeRest