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

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


### Steps and deploy :---

After creating app files and Docker file and .github/workflows/main.yaml 

we should perform these commands in terminal :-(Install Node deps locally in project)

* npm install
*  npm start

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  ### Create GitHub repository and link (GUI steps + commands)

-- Create a New GitHub repo make it public 

 --perform these commands in terminal :--

--  git init
--  git add .
--  git commit -m "Initial commit: nodejs demo app + Dockerfile + workflow"
--  git branch -M main
--  git remote add origin 
--  git push -u origin main

### Add GitHub Secrets (DO NOT put tokens in repo files)

On GitHub, open your repository → Settings → Secrets and variables → Actions → New repository secret.

Add a secret named DOCKERHUB_USERNAME → set value = your DockerHub username.

Add a secret named DOCKERHUB_ACCESS_TOKEN → set value = the token you copied from DockerHub.

(Secrets are referenced in the workflow file as ${{ secrets.DOCKERHUB_USERNAME }} etc.)

***Create an access token:***

In DockerHub, go to Account Settings → Security → New Access Token.
Give it a name like github-action-token.
Create and copy the token value and paste in github secret value.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**After that check Action tab we see Build and Push as all workflow completed all job done**
**Next we should check in DockerHub repo is web app is succesfully pushed or not**



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

### SCREENSHOTS :---


<img width="959" height="492" alt="image" src="https://github.com/user-attachments/assets/bdcd6bef-c4b0-48da-b3e6-1efa5b093537" />


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



<img width="952" height="438" alt="image" src="https://github.com/user-attachments/assets/24ec1cef-f9c4-4e99-ab16-ff856d7e1a89" />



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<img width="697" height="453" alt="image" src="https://github.com/user-attachments/assets/dcbc8674-2473-45c3-979c-fb8eb81d0c40" />


