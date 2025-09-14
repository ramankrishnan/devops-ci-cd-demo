# 🚀 CI/CD Pipeline with Jenkins, GitHub, and AWS/GCP

## 🎯 Objective
Set up a simple CI/CD pipeline for a sample application using **AWS/GCP, Jenkins, and GitHub**.  
This pipeline demonstrates **automation, scalability, and DevOps best practices**.

---

## 📌 Table of Contents
- 📖 About the Project  
- 🛠️ Prerequisites  
- 🏗️ Architecture  
- 📝 Step-by-Step Setup  
- 🏆 Achievements  
- 📸 Output / Screenshots  
- 🔮 Future Enhancements  
- 👨‍💻 Author  

---

## 📖 About the Project
This project automates the **build → test → deploy** cycle of a sample application using a CI/CD pipeline.  
It integrates multiple **DevOps tools and cloud platforms** to showcase real-world deployment practices.

### 🔹 Tech Stack
- 📂 Source Control → **GitHub**  
- ⚙️ CI/CD → **Jenkins**  
- 🐳 Containerization → **Docker**  
- ☸️ Deployment → **Kubernetes / AWS EKS / GCP GKE**  
- 🔍 Quality & Security → **SonarQube, Trivy, OWASP Dependency Check**  
- 📊 Monitoring → **Prometheus, Grafana**  

---

## 🛠️ Prerequisites
Before starting, ensure the following are installed/configured:

✅ **Cloud Account**: AWS or GCP with appropriate IAM permissions  
✅ **Jenkins Server**: Installed with required plugins  
✅ **Docker**: Installed on Jenkins and worker nodes  
✅ **Kubernetes Cluster**: EKS, GKE, or self-managed  
✅ **GitHub Repository**: For source code hosting  
✅ **SonarQube Server**: For code quality analysis  
✅ **Trivy**: For security scanning  

**Languages**: Node.js (v16+) / Python (3.8+)  

---

## 📝 Step-by-Step Setup

- ✅ Step 1 — Launch an Ubuntu 22.04 T2.large EC2 instance on AWS  
- ✅ Step 2 — Install Jenkins, Docker, and Trivy. Create a SonarQube container using Docker.  
- ✅ Step 3 — Install Prometheus and Grafana on a new server.  
- ✅ Step 4 — Install the Prometheus Plugin in Jenkins and integrate it with Prometheus.  
- ✅ Step 5 — Configure Email Notifications in Jenkins using Mailer Plugin.  
- ✅ Step 6 — Install Jenkins Plugins:  
  ☕ JDK | 📊 SonarQube Scanner | 🟦 NodeJS | 🛡️ OWASP Dependency Check  
- ✅ Step 7 — Create a Pipeline Project in Jenkins using a Declarative Pipeline.  
- ✅ Step 8 — Configure OWASP Dependency Check Plugin for security analysis.  
- ✅ Step 9 — Build & Push Docker Image to DockerHub.  
- ✅ Step 10 — Deploy the Docker image using Docker Run / Compose.  
- ✅ Step 11 — Set up Kubernetes Master & Worker Nodes on Ubuntu 20.04.  
- ✅ Step 12 — Deploy the Logo App on Kubernetes and access it via browser 🌐.  
- ✅ Step 13 — Terminate AWS EC2 Instances after testing.  

---

## ☁️ Step 1 — Launch an Ubuntu Instance (AWS EC2)

To begin, set up a cloud server for running Jenkins, Docker, and your CI/CD pipeline.  

### 🖥️ Launch EC2 Instance
1. Log in to AWS Management Console.  
2. Navigate to **EC2 → Launch Instance**.  
3. Choose **Ubuntu Server 22.04 LTS (64-bit x86)** as the AMI.  
4. Select instance type: **t2.large** (recommended for Jenkins + Docker).  
5. Configure key pair: create a new key pair or use an existing one (`.pem` file).  
6. Configure security group:  
   - Allow SSH (port 22)  
   - Allow HTTP (port 80)  
   - Allow Jenkins (8080), App (3000), HTTPS (443)  
7. Click **Launch Instance 🚀**  

### 🔑 Connect to the instance
```bash
ssh -i "your-key.pem" ubuntu@<EC2-Public-IP>
```

outputs:
## 📸 Output / Screenshots

Here is the sample output of the pipeline execution:

![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(209).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(210).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(211).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(212).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(213).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(214).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(215).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(216).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(217).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(218).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(219).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(220).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(221).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(222).png)
![Pipeline Screenshot](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(105).png)


