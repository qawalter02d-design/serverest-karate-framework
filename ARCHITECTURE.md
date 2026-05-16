# 🏗️ Architecture Document - ServeRest API Automation Framework

## 📌 1. Overview

This project implements an automated API testing framework using **Karate DSL**, designed to validate the ServeRest API (https://serverest.dev). The framework follows a modular, maintainable, and scalable architecture suitable for enterprise environments such as NTT Data / BCP.

It is integrated with **GitHub Actions CI/CD pipeline** to ensure continuous validation of API quality.

---

## 🎯 2. Architecture Goals

- Ensure scalability of test automation
- Maintain clean separation of concerns
- Enable easy maintenance of test cases
- Support CI/CD integration
- Improve reusability of test components

---

## 🧱 3. High-Level Architecture

The framework follows a layered structure:

```
+-----------------------------+
|      GitHub Actions CI      |
+-------------+---------------+
              |
              v
+-----------------------------+
|     Maven Build Layer      |
+-------------+---------------+
              |
              v
+-----------------------------+
|     Karate Test Layer      |
|  (Feature Files + Runners) |
+-------------+---------------+
              |
              v
+-----------------------------+
|     API Under Test        |
|   https://serverest.dev   |
+-----------------------------+
```

---

## 📁 4. Project Structure

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

## ⚙️ 5. Framework Components

### 5.1 Karate DSL
Used for API automation testing with BDD-style syntax:
- Feature files
- Scenarios
- Assertions
- Schema validation

---

### 5.2 Maven
Responsible for:
- Dependency management
- Test execution
- Build lifecycle
- Integration with Surefire plugin

---

### 5.3 GitHub Actions (CI/CD)

Automates execution pipeline:

1. Checkout repository
2. Setup Java environment
3. Execute Maven tests
4. Run Karate scenarios
5. Generate test reports

---

## 🔄 6. Execution Flow

```
Developer Push
      ↓
GitHub Repository
      ↓
GitHub Actions Trigger
      ↓
Maven Build Execution
      ↓
Karate Test Execution
      ↓
API Validation (ServeRest)
      ↓
Test Report Generation
```

---

## 🧪 7. Test Strategy

The framework covers:

### Functional Testing
- GET /usuarios
- GET /usuarios/{id}
- POST /usuarios
- PUT /usuarios/{id}
- DELETE /usuarios/{id}

### Validation Types
- HTTP status validation
- JSON schema validation
- Response body validation
- Negative scenarios

---

## 🔐 8. Environments

| Environment | URL |
|------------|-----|
| QA / Test | https://serverest.dev |

No credentials are required (public API).

---

## 📊 9. Reporting

- Maven Surefire Reports
- GitHub Actions Logs
- Karate execution console output

---

## 🚀 10. CI/CD Quality Gate

Pipeline is considered **SUCCESS** when:

- All scenarios pass
- No assertion failures
- Build completes with exit code 0

Failure conditions:

- Any HTTP assertion mismatch
- Schema validation error
- API unreachable

---

## 🧠 11. Design Principles

- Reusability of test scenarios
- Separation of test data and logic
- Maintainability through modular features
- CI/CD integration first approach
- Minimal hardcoding of data

---

## 👨‍💻 12. Maintainer

QA Automation Engineer  
Enterprise Practice Project (BCP / NTT Data style)