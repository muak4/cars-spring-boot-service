# Cars Spring Boot Service

Building Restful APIs with Spring Boot 3: A Practical Demonstration and Explanation

- [Purpose of this Repository](#purpose-of-this-repository)
  - [Problem Statement](#problem-statement)
  - [Suggested Implementation](#suggested-implementation)
  - [Assumptions](#assumptions)
  - [Restore Database](#restore-database)
  - [API Security](#api-security)
  - [API Endpoints](#API-Endpoints)
- [Set Up Guidelines](#Set-Up-Guidelines)
  - [Pre Requisite](#pre-requisite)
  - [Docker Setup](#docker-setup)
  - [Docker Setup](#local-setup)
  - [Configuration](#configuration)
  - [Deployments](#deployments)

---

## Purpose of this Repository

- This service is developed as an assignment for FinologyGroup. 
- Integrated [Swagger](www.swagger.io) for comprehensive API documentation. 
- Utilized JUnit5 with [Jacoco](https://www.jacoco.org/jacoco/trunk/index.html) to ensure robust test coverage and reliability. 
- Leveraged [GitHub Actions](https://github.com/features/actions) to validate all tests automatically. 
- Utilized Docker containers for efficient Build Deployment.

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

- For the Restful API implementation, I'll use Spring Boot 3, leveraging its N-tier Architecture.
- A simple JWT authentication will be provided to make a system bit secure.
- For Persistence, I'll be using Postgres Database.
- Some opensource Cars related data will be used that will be inserted to our Database.
- Dockerize Backend and Database into 2 containers for efficient Build distribution.
- For testing, I'll be using JUnit and Mockito.
- For API documentation and testing, Swagger will be integrated. [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)
- To keep things simple only GET calls are added. In this iteration there is no modifying DB.
- We will also provide paginated search response against multiple search parameters.

### Assumptions

- The application is for Demo purpose only, so things are kept simpler.
- No integration or performance testing is being done.
- For this, I'm using just one table **cars** in our database **car_db**.

### Restore Database

I have collected some data related to cars from internet and have prepared insert queries for that data. At start up
I'm copying this data into my database container using command `./database:/docker-entrypoint-initdb.d` 
in `docker-compose.yml`. I've placed these queries under [/database/docker_postgres_init.sql](https://github.com/muak4/cars-spring-boot-service/blob/main/database/docker_postgres_init.sql).

If you want to run this application outside of docker containers. You'll have to import this file using [Dbeaver](https://dbeaver.io/) 
or any other SQL client

### API Security

Basic JSON Web Tokens (JWTs) are integrated for API security. As I aim to keep things simple for this assignment,
providing an overview of security is still a good idea. To use the APIs, users must authenticate through [Swagger](http://localhost:8080/swagger-ui.html).
For that, the user needs to enter the value of the `secret` in the `Authorize` dialog. For now, the value of the `secret` 
is `this-is-a-secret-value`. After that, the user will be authenticated and now can access the APIs.

### API Endpoints

- **Get** `{baseURL}/api/health` - Checks the health of the system
- **Get** `{baseURL}/api/cars` - Fetch all cars from a database
- **Get** `{baseURL}/api/cars/{carID}` - Retrieve only one car that matches the carID.
- **Get** `{baseURL}/api/cars/search` - Search among all cars across various parameters and get paginated result.
- [Postman Collection Link](https://drive.google.com/file/d/1Lx1bws4DtXTTTV_eHnaRP5si3Qg7-XDS/view?usp=sharing) 

---

## Set Up Guidelines

### Pre Requisite

- JDK 17
- Spring Boot 3
- Docker
- PostgreSQL
- JUnit
- GitHUb Actions
- Swagger
- [pom.xml](https://github.com/muak4/cars-spring-boot-service/blob/main/pom.xml) contains all the dependencies required to build this project.

### Docker Setup

To start both of the containers i-e backend and postgres db just run below command.

- `docker compose up --detach --wait`

To tear down:

- `docker compose down --remove-orphans`

### Run Docker Image From Docker hub

- **[Docker Image Repository](https://hub.docker.com/repository/docker/muak50/cars-web-service)**
- Run `docker run -d --name cars-web-service -p 8080:8080 muak50/cars-web-service`
- You may access the running docker app on [`http://localhost:8080/swagger-ui.html`](http://localhost:8080/swagger-ui.html)

##### Stop Docker Container

- Run `docker kill {container-id}`

### Local Setup

To run application on your local machine without docker you need following tools

- [IntelliJ IDEA](https://www.jetbrains.com/idea/)
- [Postgres](https://postgresapp.com/downloads.html)

### Configuration

- Please sync and resolve the `maven` dependencies
- Run `mvn clean install`
- To run tests `mvn clean test`
- To run test using Jacoco `mvn clean test jacoco:report`. This will create html report in [target/site/index.html](http://localhost:63342/cars-web-service/target/site/jacoco/index.html)

**When application is running, you can access API docs on [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)**

### Deployments

- Swagger API Documentation: Deployed on [Amazon EC2 Instance](http://ec2-13-215-205-135.ap-southeast-1.compute.amazonaws.com:8080/swagger-ui.html)
- A docker repository is created. It can be downloaded from [here](https://hub.docker.com/repository/docker/muak50/cars-web-service). 
