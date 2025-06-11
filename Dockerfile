# STAGE 1: Build
FROM node:22.16.0 AS build
# Sets the working directory to /app
WORKDIR /app
# Copy project package.json and package-lock.json files to working directory
COPY package*.json ./
# Install dependencies
RUN npm ci
RUN npm install -g @angular/cli@20.0.1
# Copy local directory to working directory
COPY . .
# Build production version of application
RUN ng build --configuration=production

#  STAGE 2: Run
FROM nginx:stable
COPY --from=build app/dist/ci-cd-pipeline/browser /usr/share/nginx/html
EXPOSE 8080