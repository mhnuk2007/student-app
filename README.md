# Student Management API

A simple RESTful service for managing student records, built with Spring Boot and fully containerized with Docker and Docker Compose.

## Features

-   REST API for basic student management.
-   Uses Spring Data JPA for database interaction.
-   Connects to a PostgreSQL database.
-   Dockerized environment for easy setup and deployment.

## Technology Stack

-   **Backend:** [Spring Boot](https://spring.io/projects/spring-boot)
-   **Language:** [Java](https://www.java.com/) 17+
-   **Database:** [PostgreSQL](https://www.postgresql.org/)
-   **Build Tool:** [Maven](https://maven.apache.org/)
-   **Containerization:** [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)

## Prerequisites

Before you begin, ensure you have the following installed on your system:
-   [Docker](https://docs.docker.com/get-docker/)
-   [Docker Compose](https://docs.docker.com/compose/install/) (Included with Docker Desktop)
-   [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/downloads/) 17 or later
-   [Apache Maven](https://maven.apache.org/download.cgi)

## Getting Started

The recommended way to run this project is by using Docker Compose, which orchestrates both the application and the database services.

### 1. Build the Application

First, you need to build the application into a JAR file using Maven. The `-DskipTests` flag is used to bypass running tests during the build process.

```sh
mvn clean package -DskipTests
```

This command will create a `student-app.jar` file in the `target/` directory.

### 2. Run with Docker Compose

Once the JAR file is built, you can start the entire application stack with a single command:

```sh
docker-compose up --build
```

This command will:
-   Build the Docker image for the Spring Boot application.
-   Start the application container.
-   Start the PostgreSQL database container.

The application will be accessible at `http://localhost:8090`.

### 3. Stop the Application

To stop and remove all the running containers and the network, use:

```sh
docker-compose down
```

## API Endpoints

You can interact with the API using a tool like `curl` or Postman.

### Get All Students

-   **URL:** `/`
-   **Method:** `GET`
-   **Description:** Retrieves a list of all students in the database.

**Example `curl` command:**
```sh
curl http://localhost:8090/
```

### Add a Student

-   **URL:** `/add`
-   **Method:** `GET`
-   **Description:** Adds a new, hardcoded student to the database. (Note: This is a temporary endpoint for demonstration).

**Example `curl` command:**
```sh
curl http://localhost:8090/add
```
After running this, you can call `GET /` again to see the new student.