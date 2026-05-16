# 🧪 Test Plan - ServeRest API Automation

## 📌 1. Introducción

Este documento describe el plan de pruebas automatizadas para la API pública ServeRest (https://serverest.dev) utilizando el framework Karate DSL con Java y Maven, integrado con GitHub Actions para CI/CD.

El objetivo es validar el correcto funcionamiento de los principales endpoints de gestión de usuarios.

---

## 🎯 2. Objetivo

Validar que la API permita realizar correctamente las operaciones CRUD de usuarios:

- Crear usuarios  
- Consultar usuarios  
- Consultar usuario por ID  
- Actualizar usuarios  
- Eliminar usuarios  

---

## 📦 3. Alcance

### ✔ Incluido:
- Pruebas funcionales de API REST  
- Validación de códigos de estado HTTP  
- Validación de respuestas JSON  
- Validación de schema de respuesta  
- Ejecución automatizada en CI/CD (GitHub Actions)  

### ❌ No incluido:
- Pruebas de performance  
- Pruebas de seguridad  
- Pruebas de UI  
- Acceso directo a base de datos  

---

## 🧪 4. Tipos de Pruebas

### 4.1 Pruebas Funcionales API
Validan que los endpoints respondan correctamente:

- GET /usuarios  
- GET /usuarios/{id}  
- POST /usuarios  
- PUT /usuarios/{id}  
- DELETE /usuarios/{id}  

---

### 4.2 Pruebas de Validación de Datos
- Validación de estructura JSON  
- Validación de campos obligatorios  
- Validación de mensajes de error  

---

### 4.3 Pruebas Negativas
- Usuario no existente  
- IDs inválidos  
- Eliminación de registros inexistentes  
- Endpoints incorrectos  

---

## 📋 5. Criterios de Aceptación

El sistema cumple con los criterios cuando:

1. Se puede obtener una lista de todos los usuarios (200 OK)  
2. Se puede registrar un nuevo usuario con datos válidos (201 Created)  
3. Se puede buscar un usuario por ID (200 OK)  
4. Se puede actualizar la información de un usuario (200 OK)  
5. Se puede eliminar un usuario del sistema (200 OK)  

---

## 🔧 6. Herramientas Utilizadas

- Java 11+  
- Maven  
- Karate DSL  
- GitHub Actions  
- Git & GitHub  

---

## 📁 7. Estructura del Proyecto

serverest-karate-framework/
│
├── .github/workflows/
│   └── karate-tests.yml
│
├── src/test/java/
│   ├── runners/
│
├── src/test/resources/
│   ├── features/
│   │   ├── get-users.feature
│   │   ├── get-user-by-id.feature
│   │   ├── update-user.feature
│   │   ├── delete-user.feature
│   │
│   ├── schemas/
│
└── pom.xml

---

## 🔄 8. Flujo de Ejecución CI/CD

1. El desarrollador realiza un push a GitHub  
2. GitHub Actions se activa automáticamente  
3. Se ejecuta Maven  
4. Se ejecutan los tests Karate  
5. Se genera el resultado del build:  
   - 🟢 Verde: tests OK  
   - 🔴 Rojo: fallos detectados  

---

## 📊 9. Evidencia de Ejecución

- Reportes generados por Maven Surefire  
- Ejecución visible en GitHub Actions  
- Logs de ejecución de Karate  

---

## 🚀 10. Resultado Esperado

- Todos los tests deben ejecutarse correctamente  
- El pipeline CI/CD debe finalizar en estado SUCCESS  
- Validación completa de endpoints de usuarios  

---

## 👨‍💻 11. Responsable

QA Automation Engineer  
Proyecto de práctica - ServeRest API Testing