# API Automation Tests

This repository contains automated tests for API validation using RestAssured and TestNG.

## Prerequisites

- Java 8 or higher
- Maven
- An IDE like IntelliJ IDEA, Eclipse, or any other of your choice

## Project Structure

### Question 1:

**File:** ApiTests.java  
**Description:** This test validates population data for a city using RestAssured and TestNG.

**Related Schema File:**  
**File:** cityPopulationSchema.json  
**Description:** JSON schema for validating the response structure of city population data.

### Question 2:

**File:** App.java  
**Description:** This test validates weather data for London using RestAssured and TestNG.

**Related Schema File:**  
**File:** wschema.json  
**Description:** JSON schema for validating weather data response structure.

```plaintext
.
├── src
│   ├── main
│   │   └── java
│   │       └── com
│   │           └── api
│   │               └── automation
│   │                   └── api_automation
│   │                       └── App.java
│   ├── test
│   │   └── java
│   │       └── com
│   │           └── api
│   │               └── automation
│   │                   └── api_automation
│   │                       ├── ApiTests.java
│   │                       └── AppTest.java
│   └── resources
│       └── schemas
│           ├── cityPopulationSchema.json
│           └── wschema.json
└── pom.xml
└── testNG.xml
