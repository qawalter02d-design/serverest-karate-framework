# 🏗️ Documento de Arquitectura - Framework de Automatización API ServeRest

## 📌 1. Descripción General

Este proyecto implementa un framework de automatización de pruebas de API utilizando **Karate DSL**, diseñado para validar la API pública ServeRest (https://serverest.dev).

El framework sigue una arquitectura modular, mantenible y escalable, adecuada para entornos empresariales como NTT Data / BCP.

Está integrado con **GitHub Actions (CI/CD)** para asegurar la ejecución continua de pruebas.

---

## 🎯 2. Objetivos de la Arquitectura

- Garantizar escalabilidad del framework de automatización  
- Mantener separación clara de responsabilidades  
- Facilitar el mantenimiento de las pruebas  
- Permitir integración con CI/CD  
- Mejorar la reutilización de componentes  

---

## 🧱 3. Arquitectura de Alto Nivel

El flujo del sistema es el siguiente:

```
+-----------------------------+
|     GitHub Actions CI       |
+-------------+---------------+
              |
              v
+-----------------------------+
|        Maven Build          |
+-------------+---------------+
              |
              v
+-----------------------------+
|     Capa de Karate DSL      |
| (Features + Runners)        |
+-------------+---------------+
              |
              v
+-----------------------------+
|       API bajo prueba       |
|     https://serverest.dev   |
+-----------------------------+
```

---

## 📁 4. Estructura del Proyecto

```
serverest-karate-framework/
│
├── .github/
│   └── workflows/
│       └── karate-tests.yml
│
├── src/
│   └── test/
│       ├── java/
│       │   └── runners/
│       │       └── TestRunner.java
│       │
│       └── resources/
│           ├── features/
│           │   ├── get-users.feature
│           │   ├── get-user-by-id.feature
│           │   ├── update-user.feature
│           │   ├── delete-user.feature
│           │
│           ├── schemas/
│           │   └── *.json
│           │
│           ├── utils/
│           │   └── karate-config.js
│
├── pom.xml
└── README.md
```

---

## ⚙️ 5. Componentes del Framework

### 5.1 Karate DSL
Herramienta principal utilizada para automatización de pruebas API en estilo BDD.

Permite:
- Definir escenarios en lenguaje Gherkin
- Ejecutar peticiones HTTP
- Validar respuestas JSON
- Realizar validaciones de schema

---

### 5.2 Maven
Responsable de:
- Gestión de dependencias
- Ejecución de pruebas
- Ciclo de vida del build
- Integración con Surefire Plugin

---

### 5.3 GitHub Actions (CI/CD)

Automatiza el flujo de ejecución:

1. Checkout del repositorio  
2. Configuración del entorno Java  
3. Ejecución de Maven test  
4. Ejecución de escenarios Karate  
5. Generación de reportes  

---

## 🔄 6. Flujo de Ejecución

```
Push del desarrollador
        ↓
Repositorio GitHub
        ↓
Ejecución de GitHub Actions
        ↓
Build con Maven
        ↓
Ejecución de pruebas Karate
        ↓
Validación contra API ServeRest
        ↓
Generación de reportes
```

---

## 🧪 7. Estrategia de Pruebas

El framework cubre:

### Pruebas funcionales
- GET /usuarios
- GET /usuarios/{id}
- POST /usuarios
- PUT /usuarios/{id}
- DELETE /usuarios/{id}

### Tipos de validación
- Validación de códigos HTTP
- Validación de respuestas JSON
- Validación de schema
- Escenarios negativos

---

## 🔐 8. Entornos

| Entorno | URL |
|--------|-----|
| QA / Pruebas | https://serverest.dev |

No se requieren credenciales (API pública).

---

## 📊 9. Reportes

- Reportes de Maven Surefire  
- Logs de ejecución en GitHub Actions  
- Consola de Karate  

---

## 🚀 10. Quality Gate en CI/CD

El pipeline se considera **EXITOSO** cuando:

- Todos los tests pasan correctamente  
- No hay errores de validación  
- El build termina con código 0  

Condiciones de falla:

- Diferencias en status HTTP  
- Fallos en schema  
- API no disponible  

---

## 🧠 11. Principios de Diseño

- Reutilización de escenarios  
- Separación de datos y lógica  
- Mantenibilidad del framework  
- Integración con CI/CD desde el inicio  
- Evitar hardcode innecesario  

---

## 👨‍💻 12. Responsable

Ingeniero de Automatización QA : Walter Enrique Diaz Castillo 
Proyecto de práctica - Estilo empresarial (BCP / NTT Data)