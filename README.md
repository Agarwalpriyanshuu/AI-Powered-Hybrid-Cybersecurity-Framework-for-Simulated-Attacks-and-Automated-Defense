# 📌 CDAC Projects – Priyanshu Agarwal

This repository contains my Post Graduate Diploma (PG-DITISS) projects completed at **CDAC**.  
Both projects focus on **cutting-edge DevOps automation** and **AI-powered cybersecurity**.

---

## 🚀 Project 1: Secure-CI-CD-GitOps-Pipeline-with-Jenkins-SonarQube-Trivy-Syft-and-Argo-CD

**Description:**  
A fully automated **CI/CD pipeline** for deploying a Python Flask + React-based e-commerce application on a **Kubernetes cluster** with high availability, scalability, and robust security checks.

**Key Features:**
- **Version Control & Branching** – GitHub with `dev` → `master` merge automation.
- **Continuous Integration** – Jenkins pipeline for automated build, test, and quality checks.
- **Code Quality & Security Scans** – Integrated **SonarQube**, **Bandit**, **Trivy**, **Gitleaks**, **OWASP Dependency Check**, and **Syft SBOM** generation.
- **Containerization** – Docker images built and pushed to DockerHub.
- **Infrastructure as Code (IaC)** – Kubernetes deployment via **Terraform** and **Ansible**.
- **Continuous Deployment** – Automated Kubernetes YAML updates and deployment through **Argo CD**.
- **Monitoring & Observability** – Metrics collection using **Prometheus** and dashboards in **Grafana**.

**Tech Stack:**  
`Jenkins` `SonarQube` `Bandit` `Trivy` `Gitleaks` `Docker` `Kubernetes` `Terraform` `Ansible` `Argo CD` `Prometheus` `Grafana` `Flask` `React` `MySQL`

---

## 🛡️ Project 2: AI-Powered-Hybrid-Cybersecurity-Framework-for-Simulated-Attacks-and-Automated-Defense

**Description:**  
An **AI-powered cybersecurity framework** designed for **Blue Team** operations, combining **threat detection, automated scanning, and real-time incident response**.  
The system operates in a **transparent firewall bridge mode** using **pfSense**, integrated with AI-based analytics for early detection of malicious activity.

**Key Features:**
- **Network Security Gateway** – pfSense in transparent bridge mode for inline traffic inspection.
- **Automated Scanning** – AI triggers vulnerability scans using tools like `Nmap`, `RustScan`, and `OpenVAS`.
- **Threat Intelligence Integration** – Correlates logs with external threat feeds.
- **Alerting & Reporting** – Automated alerts to SOC dashboard with severity classification.
- **AI Decision Engine** – Machine learning-based anomaly detection for proactive defense.
- **Incident Response Automation** – Suggested or automatic mitigation actions.

**Tech Stack:**  
`pfSense` `OpenVAS` `Nmap` `RustScan` `Python` `AI/ML` `Threat Intelligence APIs` `Grafana` `Prometheus` `ELK Stack`

---
