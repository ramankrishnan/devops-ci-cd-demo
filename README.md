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
To enhance your GitHub repository's `README.md` for the `devops-ci-cd-demo` project, I'll create a polished **Output / Screenshots** section that incorporates the provided screenshots and aligns with the attractive, emoji-enhanced style you've requested. I'll also integrate this section seamlessly with the existing README content from your repository (`https://github.com/ramankrishnan/devops-ci-cd-demo`) and the previously provided **Step-by-Step Setup** section. The section will showcase the screenshots you shared (Screenshots 105, 209, 210, and 211) with descriptive captions, emojis, and a clean layout to make it visually appealing.

Since you want the output section to resemble the style of the provided repository README and include the screenshots, I'll focus on creating a professional and engaging **Output / Screenshots** section. Additionally, I'll ensure the section fits naturally with the existing content about the "Logo Server" application and the CI/CD pipeline setup.

Below is the **Output / Screenshots** section, followed by instructions on how to integrate it into your `README.md`. If you want the full README updated (combining the Logo Server content, Step-by-Step Setup, and this new section), I can provide that as well—just let me know!

### Output / Screenshots Section

```markdown
## 📸 Output / Screenshots

🎉 Below are screenshots showcasing the CI/CD pipeline in action and the deployed Logo Server application. These visuals demonstrate the successful setup and execution of the pipeline, from Jenkins to Kubernetes deployment.

1. **Jenkins Pipeline Success**  
   The Jenkins pipeline successfully executes all stages, including code checkout, SonarQube analysis, Docker build, and Kubernetes deployment.  
   ![Jenkins Pipeline Success](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(105).png?raw=true)  
   *✅ Pipeline completed with all stages passing.*

2. **SonarQube Analysis Results**  
   Code quality analysis performed by SonarQube, showing metrics like code coverage and vulnerabilities.  
   ![SonarQube Analysis](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(209).png?raw=true)  
   *🔍 Detailed code quality insights for the Logo Server.*

3. **Grafana Monitoring Dashboard**  
   Prometheus and Grafana monitor the Jenkins system and application performance in real-time.  
   ![Grafana Dashboard](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(210).png?raw=true)  
   *📊 Visualizing system metrics for optimal performance.*

4. **Logo Server Application in Browser**  
   The deployed Logo Server application displaying the Swayatt logo.  
   ![Logo Server](https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/Screenshot%20(211).png?raw=true)  
   *🌐 The Logo Server running successfully at `http://<NodePort-IP>:<NodePort>`.*

> 💡 **Tip**: Click on the screenshots to view them in full resolution on GitHub.

```

### How to Integrate into Your README

1. **Copy the Section**: Copy the markdown content above (from `## 📸 Output / Screenshots` to the end).
2. **Edit README.md**:
   - Open your `README.md` file in your GitHub repository (`https://github.com/ramankrishnan/devops-ci-cd-demo`).
   - Add the **Output / Screenshots** section under the existing content or replace any existing screenshot section. For example, you can place it after the **Technical Details** section or the **Step-by-Step Setup** section from your previous requests.
   - If you want to combine this with the **Step-by-Step Setup** section provided earlier, append it after that section in the README.
3. **Verify Screenshots**:
   - The provided screenshot URLs (`Screenshot (105).png`, etc.) are already hosted in your repository's `images/` folder and are correctly referenced with `?raw=true` to ensure they display properly in the README.
   - If you upload additional screenshots or rename them, update the URLs accordingly (e.g., `https://github.com/ramankrishnan/devops-ci-cd-demo/blob/main/images/<new-screenshot-name>.png?raw=true`).
4. **Commit and Push**:
   ```bash
   git add README.md
   git commit -m "docs: add output screenshots section with emojis and descriptions"
   git push origin main
   ```
5. **Preview**: After pushing, visit your repository (`https://github.com/ramankrishnan/devops-ci-cd-demo`) to ensure the screenshots render correctly and the section looks appealing.

### Full README Example (Optional)

If you want to combine this with the existing "Logo Server" content and the **Step-by-Step Setup** section, here's how the full `README.md` could look. This integrates the original repository content, the enhanced **Step-by-Step Setup** from your previous request, and the new **Output / Screenshots** section.

```markdown
# 🚀 CI/CD Pipeline with Jenkins, GitHub, and AWS for Logo Server

[![Build Status](https://img.shields.io/badge/build-passing-brightgreen)](https://github.com/ramankrishnan/devops-ci-cd-demo)
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)

🎯 **Objective**: Build a robust CI/CD pipeline to automate the build, test, and deployment of a simple Express.js web server (Logo Server) using Jenkins, GitHub, and AWS.

## 📌 Table of Contents

- [📖 About the Project](#-about-the-project)
- [🛠️ Prerequisites](#-prerequisites)
- [🏗️ Architecture](#-architecture)
- [📝 Step-by-Step Setup](#-step-by-step-setup)
- [📸 Output / Screenshots](#-output--screenshots)
- [👨‍💻 Author](#-author)

---

## 📖 About the Project

This project automates the deployment of a lightweight **Logo Server**, a Node.js application built with Express.js that serves the Swayatt logo image (`logoswayatt.png`). The CI/CD pipeline integrates modern DevOps tools to ensure code quality, security, and scalable deployment.

🔹 **Tech Stack**

| Component             | Tool/Service                     |
|----------------------|----------------------------------|
| 📂 Source Control     | GitHub                          |
| ⚙️ CI/CD             | Jenkins                         |
| 🐳 Containerization   | Docker                          |
| ☸️ Orchestration      | Kubernetes (EKS)                |
| 🔍 Code Quality       | SonarQube                       |
| 🔒 Security Scanning  | Trivy                           |
| 📊 Monitoring         | Prometheus & Grafana            |

---

## 🛠️ Prerequisites

- **Application**:
  - Node.js (v12+)
  - npm (Node Package Manager)
- **Cloud**: AWS account with IAM permissions
- **Tools**:
  - Git
  - Docker & DockerHub account
  - Jenkins
  - Kubernetes (EKS or Minikube)
  - SonarQube
  - Trivy
  - AWS CLI (configured)

---

## 🏗️ Architecture

```
Developer → GitHub → Jenkins Pipeline → SonarQube → Docker Build → Trivy Scan → DockerHub → Kubernetes (EKS) → Monitoring (Prometheus/Grafana)
```

![CI/CD Pipeline Architecture](https://via.placeholder.com/800x300.png?text=CI/CD+Pipeline+Architecture)  
*Note: Replace with an actual architecture diagram for better visuals.*

---

## 📝 Step-by-Step Setup

🚀 Follow these steps to set up your CI/CD pipeline with ease. Copy and run the commands below to get started.

### ✅ Step 1 — Launch an Ubuntu 22.04 T2.large EC2 Instance on AWS

1. **Launch EC2 Instance**  
   - Log in to the **AWS Management Console**.  
   - Navigate to **EC2 → Launch Instance**.  
   - Select **Ubuntu Server 22.04 LTS (64-bit x86)**.  
   - Choose instance type: **t2.large**.  
   - Configure a key pair (`.pem` file).  
   - Set up security group:  
     - Allow **SSH (port 22)**  
     - Allow **HTTP (port 80)**  
     - Allow **8080 (Jenkins)**, **9000 (SonarQube)**, **3000 (Node app)**, **443 (HTTPS)**.  
   - Click **Launch Instance** 🚀.

2. **Connect to the Instance**  
   ```bash
   ssh -i "your-key.pem" ubuntu@<EC2-Public-IP>
   ```

---

### ✅ Step 2 — Install Jenkins, Docker, Trivy, and SonarQube

```bash
#!/bin/bash
# Update system
sudo apt update -y
sudo apt upgrade -y

# Install Java
sudo apt install openjdk-17-jre -y
sudo apt install openjdk-17-jdk -y

# Install Jenkins
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

# Install Docker
sudo apt install docker.io -y
sudo usermod -aG docker jenkins
sudo usermod -aG docker ubuntu
sudo systemctl restart docker
sudo chmod 777 /var/run/docker.sock

# Run SonarQube Container
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community

# Install Trivy
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt update
sudo apt install trivy -y
```

**Credentials**:  
- **Jenkins**: `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`  
- **SonarQube**: Username: `admin`, Password: `admin`

---

### ✅ Step 3 — Install Prometheus and Grafana

1. **Install Prometheus**  
   ```bash
   sudo useradd --system --no-create-home --shell /bin/false prometheus
   wget https://github.com/prometheus/prometheus/releases/download/v2.47.1/prometheus-2.47.1.linux-amd64.tar.gz
   tar -xvf prometheus-2.47.1.linux-amd64.tar.gz
   sudo mkdir -p /data /etc/prometheus
   cd prometheus-2.47.1.linux-amd64/
   sudo mv prometheus promtool /usr/local/bin/
   sudo mv consoles/ console_libraries/ /etc/prometheus/
   sudo mv prometheus.yml /etc/prometheus/prometheus.yml
   sudo chown -R prometheus:prometheus /etc/prometheus/ /data/
   ```

2. **Create Prometheus Service**  
   ```bash
   sudo nano /etc/systemd/system/prometheus.service
   ```
   Add:  
   ```ini
   [Unit]
   Description=Prometheus
   Wants=network-online.target
   After=network-online.target
   [Service]
   User=prometheus
   Group=prometheus
   Type=simple
   ExecStart=/usr/local/bin/prometheus \
     --config.file=/etc/prometheus/prometheus.yml \
     --storage.tsdb.path=/data \
     --web.console.templates=/etc/prometheus/consoles \
     --web.console.libraries=/etc/prometheus/console_libraries \
     --web.listen-address=0.0.0.0:9090
   [Install]
   WantedBy=multi-user.target
   ```

3. **Start Prometheus**  
   ```bash
   sudo systemctl enable prometheus
   sudo systemctl start prometheus
   ```

4. **Install Grafana**  
   ```bash
   sudo apt-get install -y apt-transport-https software-properties-common
   wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
   echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
   sudo apt-get update
   sudo apt-get install -y grafana
   sudo systemctl enable grafana-server
   sudo systemctl start grafana-server
   ```

---

### ✅ Step 4 — Integrate Prometheus with Jenkins

1. **Install Prometheus Plugin**  
   - Go to **Manage Jenkins → Plugins → Available Plugins**.  
   - Install **Prometheus**.

2. **Configure Prometheus**  
   Edit `/etc/prometheus/prometheus.yml`:  
   ```yaml
   - job_name: 'jenkins'
     metrics_path: '/prometheus'
     static_configs:
       - targets: ['<Jenkins-Public-IP>:8080']
   ```

3. **Reload Prometheus**  
   ```bash
   curl -X POST http://localhost:9090/-/reload
   ```

---

### ✅ Step 5 — Configure Email Notifications

1. **Install Mailer Plugin**  
   - Go to **Manage Jenkins → Plugins → Available Plugins**.  
   - Install **Mailer Plugin**.

2. **Configure SMTP**  
   - Go to **Manage Jenkins → System**.  
   - Add SMTP details (e.g., `smtp.gmail.com`, port `587`).

---

### ✅ Step 6 — Install Jenkins Plugins

- ☕ **Eclipse Temurin Installer** (JDK 17)  
- 📊 **SonarQube Scanner**  
- 🟦 **NodeJS Plugin** (Node 16)  
- 🛡️ **OWASP Dependency-Check**

---

### ✅ Step 7 — Create Pipeline Project

Create a Jenkins pipeline with the script provided in the repository.

---

### ✅ Step 8 — Configure OWASP Dependency Check

- Install **OWASP Dependency-Check** plugin.  
- Add to pipeline for vulnerability scanning.

---

### ✅ Step 9 — Build & Push Docker Image

```bash
docker build -t ramankms/logo:latest .
docker push ramankms/logo:latest
```

---

### ✅ Step 10 — Deploy Docker Image

```bash
docker rm -f logo || true
docker run -d --name logo -p 3001:3000 ramankms/logo:latest
```

---

### ✅ Step 11 — Set Up Kubernetes Cluster

Commands to run on every node (master + workers)
```
# 1) set hostname (example) and update
sudo hostnamectl set-hostname <node-name>   # e.g. master, worker1
sudo apt update && sudo apt upgrade -y

# 2) disable swap (required)
sudo swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab

# 3) load kernel modules + sysctl for networking
sudo modprobe overlay
sudo modprobe br_netfilter
cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF
sudo sysctl --system

# 4) install containerd (recommended runtime) and configure systemd cgroup
sudo apt install -y containerd
sudo mkdir -p /etc/containerd
sudo containerd config default | sudo tee /etc/containerd/config.toml
# ensure containerd uses systemd cgroup
sudo sed -i 's/SystemdCgroup = false/SystemdCgroup = true/' /etc/containerd/config.toml
sudo systemctl restart containerd
sudo systemctl enable containerd

# 5) install kubeadm, kubelet, kubectl (Kubernetes packages)
sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
sudo mkdir -p /etc/apt/keyrings
curl -fsSLo /etc/apt/keyrings/k8s.gpg https://pkgs.k8s.io/core:/stable:/v1.34/deb/Release.key
echo "deb [signed-by=/etc/apt/keyrings/k8s.gpg] https://pkgs.k8s.io/core:/stable:/v1.34/deb/ /" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
```

master:
=================
```
sudo kubeadm init --pod-network-cidr=10.244.0.0/16
# in case your in root exit from it and run below commands
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml```

---

### ✅ Step 12 — Access Logo App

- Access: `http://<NodePort-IP>:<NodePort>`  
- Displays the Swayatt logo.

---
ci-cd pipeline script
=====================================

```

pipeline {
    agent any
    tools {
        jdk 'jdk 17'
        nodejs 'node16'
    }
    environment {
        SCANNER_HOME = tool 'Sonar Scanner'
    }
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout from Git') {
            steps {
                git branch: 'main', url: 'https://github.com/ramankrishnan/devops-ci-cd-demo.git'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('sonar server') {
                    sh '''
                    $SCANNER_HOME/bin/sonar-scanner \
                      -Dsonar.projectName=devops-ci-cd-demo \
                      -Dsonar.projectKey=devops-ci-cd-demo
                    '''
                }
            }
        }

        stage('Quality Gate') {
            steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-token'
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                sh "npm install"
            }
        }

        stage('OWASP FS Scan') {
            steps {
                dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit', odcInstallation: 'DP-Check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }

        stage('Trivy FS Scan') {
            steps {
                sh "trivy fs . > trivyfs.txt"
            }
        }

        stage('Docker Build & Push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {
                        sh "docker build -t ramankms/logo:latest ."
                        sh "docker push ramankms/logo:latest"
                    }
                }
            }
        }

        stage('Trivy Image Scan') {
            steps {
                sh "trivy image ramankms/logo:latest > trivyimage.txt"
            }
        }

        stage('Deploy to Container') {
            steps {
                sh '''
                docker rm -f logo || true
                docker run -d --name logo -p 3001:3000 ramankms/logo:latest
                '''
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    dir('kubernetes') {
                        withKubeConfig([credentialsId: 'k8s']) {
                            sh 'kubectl apply -f deployment.yml'
                            sh 'kubectl apply -f service.yml || true'
                            
                        }
                    }
                }
            }
        }
    }
}
```
### ✅ Step 13 — Terminate EC2 Instances

- Go to **AWS EC2 Console** and terminate instances after testing.

---

## 📸 Output / Screenshots

🎉 Below are screenshots showcasing the CI/CD pipeline in action and the deployed Logo Server application. These visuals demonstrate the successful setup and execution of the pipeline, from Jenkins to Kubernetes deployment.



---

## 👨‍💻 Author

**Raman Krishnan**  
- GitHub: [ramankrishnan](https://github.com/ramankrishnan)  
- LinkedIn: [Your LinkedIn Profile](#)  
- Email: [Your Email](#)

---

© 2025 GitHub, Inc.
Let me know if you need additional sections, a specific diagram, or further assistance! 🚀
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


