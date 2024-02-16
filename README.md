# Kubernetes Cluster Setup and Node.js Deployment

This repository contains scripts and configuration files for setting up a Kubernetes cluster using Kind and deploying a simple Node.js application.

## Scripts

- `setup-cluster.sh`: Bash script for installing Kind and creating a local Kubernetes cluster.
- `main.tf`: Terraform script for deploying the Node.js application image to the Kubernetes cluster.
  
## Configuration Files

- `Dockerfile`: Dockerfile for building the Node.js application container.
- `kube.yaml`: Kubernetes Deployment manifest for deploying the Node.js application.

## Prerequisites

Before running the scripts, make sure you have the following tools installed:

- Docker
- Kind
- Terraform
- kubectl

## Usage

1. Run `setup-cluster.sh` to install Kind and create a local Kubernetes cluster.
2. Run `main.tf` to deploy the Node.js application image to the Kubernetes cluster.

## Notes

- Ensure that the necessary permissions are set up for pulling images from your Docker registry.
- Adjust the configuration files as needed for your specific environment.
