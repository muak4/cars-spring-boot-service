# Cars Spring Boot Service

Building Restful APIs with Spring Boot 3: A Practical Demonstration and Explanation

### What is Repository does?
* This service is developed as an assignment for FinologyGroup.
* Integrated Swagger for comprehensive API documentation.
* Utilized JUnit 5 to ensure robust test coverage and reliability.
* Leveraged GitHub Actions to validate all tests automatically.
* Utilized Docker containers for efficient Build Deployment.

### Problem Statement
Question: Write a restful webservice that gets car type and returns a car from it.

Notes:
* Car type can be electrical, 2 wheels or sport.
* Each car type might have different parts.
* You are free to make any assumption, for example about car parts but please mention it in your answer.
* You will be assessed based on
  * Code quality
  * Thinking process and logic
  * Software Design
* It would be fine if you have a non-working application as our assessment is not about finishing but more on code itself.

### Suggested Implementation
For the Restful API implementation, I'll use Spring Boot 3, leveraging its N-tie architecture.
For Persistence, I'll use Postgres Database.
Some opensource Cars data will be used that will be inserted to our Database.
Dockerize Backend and Database into 2 containers for efficient Build distribution. 
For testing, I'll be using JUnit and Mockito.

For API documentation, Swagger will be integrated.
