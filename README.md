🚀 CRUD MEAN Stack Application — Dockerized + CI/CD + AWS Deployment

This project is a Dockerized full-stack MEAN application (MongoDB, Express.js, Angular, Node.js) deployed on an AWS EC2 instance, using Docker Compose, Nginx Reverse Proxy, and GitHub Actions CI/CD.
Whenever changes are pushed to the main branch, GitHub Actions:

Builds updated frontend and backend Docker images

Pushes them to Docker Hub

SSH-deploys the new version on EC2

Restarts the application using docker-compose

📂 Project Structure
├── backend
│   ├── Dockerfile
│   ├── app
│   │   ├── config
│   │   │   └── db.config.js
│   │   ├── controllers
│   │   │   └── tutorial.controller.js
│   │   ├── models
│   │   │   ├── index.js
│   │   │   └── tutorial.model.js
│   │   └── routes
│   │       └── turorial.routes.js
│   ├── package.json
│   └── server.js
├── docker-compose.yml
├── frontend
│   ├── Dockerfile
│   ├── angular.json
│   ├── package-lock.json
│   ├── package.json
│   ├── src
│   │   ├── app
│   │   │   ├── app-routing.module.ts
│   │   │   ├── app.component.css
│   │   │   ├── app.component.html
│   │   │   ├── app.component.spec.ts
│   │   │   ├── app.component.ts
│   │   │   ├── app.module.ts
│   │   │   ├── components
│   │   │   │   ├── add-tutorial
│   │   │   │   │   ├── add-tutorial.component.css
│   │   │   │   │   ├── add-tutorial.component.html
│   │   │   │   │   ├── add-tutorial.component.spec.ts
│   │   │   │   │   └── add-tutorial.component.ts
│   │   │   │   ├── tutorial-details
│   │   │   │   │   ├── tutorial-details.component.css
│   │   │   │   │   ├── tutorial-details.component.html
│   │   │   │   │   ├── tutorial-details.component.spec.ts
│   │   │   │   │   └── tutorial-details.component.ts
│   │   │   │   └── tutorials-list
│   │   │   │       ├── tutorials-list.component.css
│   │   │   │       ├── tutorials-list.component.html
│   │   │   │       ├── tutorials-list.component.spec.ts
│   │   │   │       └── tutorials-list.component.ts
│   │   │   ├── models
│   │   │   │   ├── tutorial.model.spec.ts
│   │   │   │   └── tutorial.model.ts
│   │   │   └── services
│   │   │       ├── tutorial.service.spec.ts
│   │   │       └── tutorial.service.ts
│   │   ├── assets
│   │   ├── favicon.ico
│   │   ├── index.html
│   │   ├── main.ts
│   │   └── styles.css
│   ├── tsconfig.app.json
│   ├── tsconfig.json
│   └── tsconfig.spec.json
└── nginx
    └── default.conf

    
🖥️ Application Overview
✔ Frontend

Angular application served using Nginx inside a Docker container.

✔ Backend

Node.js + Express REST API connected to MongoDB.

✔ Database

MongoDB running as its own Docker container (mongo:6).

✔ Reverse Proxy

A separate Nginx container routes:

/ → Angular frontend

/api/ → Node backend

✔ Deployment

Docker Compose orchestrates all containers on an AWS EC2 instance.

🚀 CI/CD Using GitHub Actions

Whenever a commit is pushed to main, GitHub Actions:

Builds backend & frontend Docker images

Tags them with latest and with the Git commit SHA

Pushes both images to Docker Hub

SSHs into EC2

Pulls the newest images

Restarts containers with docker-compose

🌐 Production Deployment Steps (EC2)

Launch EC2 Instance (Amazon Linux / Ubuntu)

Install Docker + Docker Compose

Clone the repository:
git clone https://github.com/<username>/crud-dd-task-mean-app

Run:
docker compose up --build -d

🧰 GitHub Secrets Required
| Secret Name          | Value                    |
| -------------------- | ------------------------ |
| `DOCKERHUB_USERNAME` | Your Docker Hub username |
| `DOCKERHUB_TOKEN`    | Docker Hub Access Token  |
| `EC2_HOST`           | EC2 Public IP            |
| `EC2_USER`           | ec2-user / ubuntu        |
| `EC2_SSH_KEY`        | Your private SSH key     |<img width="1918" height="1055" alt="p9" src="https://github.com/user-attachments/assets/96c33f16-a7c1-4282-84b8-5314cc0790eb" />
<img width="1918" height="1025" alt="p8" src="https://github.com/user-attachments/assets/0a324bb7-0cc6-439c-877d-bdcc51500237" />
<img width="1918" height="1033" alt="p7" src="https://github.com/user-attachments/assets/dbe07255-561f-4abe-ab06-54098b2ef516" />
<img width="1907" height="1022" alt="p6" src="https://github.com/user-attachments/assets/90c347ec-5909-4c94-b009-bf2fb14d3d18" />
<img width="1908" height="1070" alt="p5" src="https://github.com/user-attachments/assets/5b83dbf3-4a9d-42ba-8144-24aec31a019b" />
<img width="1901" height="1041" alt="p4" src="https://github.com/user-attachments/assets/317f4e97-b456-44ce-a1b0-0ee39a95de02" />
-
