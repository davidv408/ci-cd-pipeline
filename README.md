# CI-CD Pipeline

Angular project setup specifically to run a CI/CD pipeline.

## Technology Overview

This CI/CD pipeline uses:
- Github Actions - Runs the CI/CD workflow on every code commit to this project
- Docker  - Containerizes application
- GCP Image Repository - Store Docker images for deployment
- GCP Cloud Run - Target service for CI/CD pipeline deployments


## Workflow Overview
The CI/CD pipeline is triggered via Github Actions when code is commited to the project. The CI/CD pipeline has the following stages: build the application (Build), test the application (Test), deploy the application (Deploy)
   - Build
     - Configure Linux machine
     - Install Node.js
     - Install project dependencies
   - Test
     - Run unit tests
   - Deploy
     - Create Docker image
     - Push Docker image to Google Cloud Image Repository
     - Deploy to Cloud run

## Project Structure

ci-cd-pipeline \
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DockerFile (Used to containrize the application) \
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;package.json (Declare project dependencies) \
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;package-lock.json (Exact project dependencies installed) \
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;...
