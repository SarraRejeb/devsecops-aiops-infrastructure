# 🏗️ Infrastructure IaC — DevSecOps Souveraine sur OpenStack

> **PFE 2026 — ESPRIT | RIF**  
> Architecture DevSecOps Souveraine intégrant l'AIOps pour les applications MERN/MEAN sur OpenStack

## 📋 Description

Ce repository contient les fichiers **Terraform** permettant de provisionner automatiquement l'infrastructure OpenStack nécessaire au déploiement de la plateforme DevSecOps souveraine.

L'infrastructure est déployée sur un cluster **OpenStack privé** hébergé sur serveurs **Hetzner** et géré par **Kolla-Ansible**.

## 🏛️ Architecture
OpenStack (Kolla-Ansible)
└── Projet : devsecops-aiops-sarra
├── VM : devsecops-aiops-mean-mern-tf-vm
│   ├── Ubuntu 22.04 LTS
│   ├── 8 vCPUs / 16 Go RAM / 100 Go Disk
│   ├── GitLab CE (CI/CD)
│   ├── Harbor Registry (images Docker)
│   ├── Kubernetes k3s
│   └── Nginx (reverse proxy)
├── Réseau : 10.10.20.0/24
├── Floating IP : 88.198.101.150
└── Security Group : SSH/HTTP/HTTPS/K8s/ICMP
