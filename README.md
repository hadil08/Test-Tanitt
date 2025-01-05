# Application Deployment with MicroK8s

This repository contains a containerized application deployed on a local Kubernetes cluster using **MicroK8s**. The deployment is manually managed using Kubernetes manifest files. This guide walks you through the steps to set up, deploy, and run the application.

## Prerequisites

Before you begin, make sure you have the following installed:

- **MicroK8s** (for Kubernetes cluster)
  - Follow the installation guide: https://microk8s.io/docs
- **Docker** (for building containers)
  - Install Docker: https://docs.docker.com/get-docker/
- **kubectl** (for interacting with Kubernetes)
  - Install kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/
- **Git** (for version control)
  - Install Git: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Setup and Configuration

### 1. Set Up MicroK8s Cluster

- Install MicroK8s on your local machine using the following command:

    ```bash
    sudo snap install microk8s --classic --channel=1.28
    ```

- Add the current user to the `microk8s` group for easier management:

    ```bash
    sudo usermod -a -G microk8s $(whoami)
    ```

- Enable essential services like DNS and Ingress:

    ```bash
    microk8s enable dns ingress
    ```

- Verify that MicroK8s is installed and running:

    ```bash
    microk8s kubectl get nodes
    ```

### 2. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/hadil08/Test-Tanitt.git
cd Test-Tanitt
