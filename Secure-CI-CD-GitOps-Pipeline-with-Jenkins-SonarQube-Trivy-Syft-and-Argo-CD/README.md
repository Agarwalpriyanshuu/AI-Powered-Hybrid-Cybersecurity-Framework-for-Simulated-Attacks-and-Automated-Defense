# Secure-CI-CD-GitOps-Pipeline-with-Jenkins-SonarQube-Trivy-Syft-and-Argo-CD-

---

````
# 🔐 Secure CI/CD + GitOps Pipeline with Jenkins, SonarQube, Trivy, Syft, and Argo CD

This project implements a **secure, fully automated CI/CD and GitOps pipeline** that enables seamless delivery from GitHub to a production-grade Kubernetes cluster. It integrates code quality, vulnerability scanning, container security, and GitOps deployment into a streamlined workflow.

---

## 📌 Objective

To build a reliable and secure DevSecOps pipeline that:
- Automatically tests and scans code for vulnerabilities
- Ensures code quality before deployment
- Generates SBOMs for compliance
- Deploys to Kubernetes via GitOps using Argo CD

---

## 🛠️ Tech Stack

| Category             | Tools Used                                      |
|----------------------|-------------------------------------------------|
| CI/CD Automation     | GitHub Actions, Jenkins                         |
| Security Scanning    | Bandit, Trivy, OWASP Dependency-Check           |
| Code Quality         | SonarQube                                       |
| SBOM                 | Syft, Dependency-Track                          |
| Containerization     | Docker                                          |
| GitOps Deployment    | Argo CD                                         |
| Orchestration        | Kubernetes (w/ HPA & Load Balancing)           |

---

## 🔁 Pipeline Workflow

```
1. Developer pushes code to GitHub (dev branch)
2. GitHub Action runs Pytest
3. On success, the webhook triggers Jenkins
4. Jenkins Pipeline:
   - Checkout the dev branch
   - Run additional tests
   - Bandit scan
   - OWASP Dependency Check
   - SonarQube scan + wait for Quality Gate
   - Trivy scan on Dockerfile
   - Build Docker image
   - Trivy image scan
   - Generate image scan report
   - Generate SBOM via Syft
   - Push SBOM to Dependency-Track UI
   - Push Docker image to Docker Hub
   - Merge dev → master
5. Argo CD detects a master branch update
6. Argo CD applies new manifests to Kubernetes
7. Kubernetes Cluster:
   - Deploys updated image
   - Autoscaling with HPA
   - Load balancing is enabled
````

---

## 📦 Structure

```bash
┌────────────────────┐
│   Developer Push   │
│   to GitHub (dev)  │
└────────┬───────────┘
         │
         ▼
┌──────────────────────────────┐
│  GitHub Action (on dev push)│
│  • Run Pytest                │
└────────┬─────────────────────┘
         │ If tests pass
         ▼
┌──────────────────────────────┐
│  GitHub → Webhook Trigger    │
│        Jenkins               │
└────────┬─────────────────────┘
         ▼
┌────────────────────────────────────────────┐
│               Jenkins CI                   │
├────────────────────────────────────────────┤
│ 1. Check out the dev branch                   │
│ 2. Run Tests                               │
│ 3. Bandit Security Scan                    │
│ 4. OWASP Dependency Check                  │
│ 5. SonarQube Code Quality Scan             │
│ 6. Wait for SonarQube Quality Gate         │
│ 7. Trivy Dockerfile Scan                   │
│ 8. Docker Image Build                      │
│ 9. Trivy Docker Image Scan                 │
│10. Generate Image Scan Report              │
│11. SBOM Generation via Syft                │
│12. Push SBOM to Dependency-Track UI        │
│13. Push Docker Image to DockerHub          │
│14. Merge dev → master branch           │
└────────┬────────────────────────────────────┘
         │
         ▼
┌──────────────────────────────────────────────┐
│               GitHub (master)                │
│ Argo CD Watches for Changes                  │
└────────┬─────────────────────────────────────┘
         ▼
┌──────────────────────────────────────────────┐
│                Argo CD (GitOps)              │
│  • Detects master update                     │
│  • Applies synced manifests to Kubernetes    │
└────────┬─────────────────────────────────────┘
         ▼
┌──────────────────────────────────────────────┐
│       Kubernetes Cluster (Multi-node)        │
│  • Deploys the latest Docker image               │
│  • Autoscaling via HPA                       │
│  • Load-balanced service                     │
└──────────────────────────────────────────────┘
```

---

## 📊 Security & Compliance

* ✅ Static code analysis with Bandit and SonarQube
* ✅ OWASP dependency scanning
* ✅ Trivy scan of Dockerfile and final image
* ✅ SBOM generation for supply chain security
* ✅ SBOM visualized in Dependency-Track UI

---

## 🚀 Deployment Architecture

```
GitHub → GitHub Actions → Jenkins → Security/Quality Scans →
Docker Build → SBOM → Docker Hub →
GitHub (master) → Argo CD → Kubernetes Cluster
```

---

## 🧠 Key Benefits

* Full automation from code to deployment
* Integrated security gates before production
* GitOps ensures safe and auditable deployments
* Scalable and production-ready Kubernetes setup

---
