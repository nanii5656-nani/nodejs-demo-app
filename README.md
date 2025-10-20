# Task 1: Automate Code Deployment Using CI/CD Pipeline (GitHub Actions)

## Objective
Set up a CI/CD pipeline to automate the build and deployment of a web application using GitHub Actions.

---

## Tools & Technologies
- **Version Control:** GitHub
- **CI/CD:** GitHub Actions
- **Programming Language:** Node.js
- **Containerization:** Docker
- **Container Registry:** DockerHub

---

## Project Overview
This project demonstrates how to implement a complete CI/CD workflow for a Node.js application using GitHub Actions and Docker. The pipeline automates the following steps:

1. **Test** - Run automated tests to ensure code quality.
2. **Build** - Build a Docker image for the application.
3. **Push** - Push the Docker image to DockerHub for deployment.

The workflow is triggered automatically on every push to the `main` branch.

---

## Workflow Configuration

The CI/CD pipeline is defined in the GitHub Actions workflow file:

.github/workflows/main.yml


### Key Jobs
- **Build Job:** Installs dependencies, runs tests, and builds the Docker image.
- **Deploy Job:** Pushes the Docker image to DockerHub.

### Sample Workflow Trigger
```yaml
on:
  push:
    branches:
      - main


