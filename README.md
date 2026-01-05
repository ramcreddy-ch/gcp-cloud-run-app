# GCP Cloud Run App

A Serverless Go Application deployed to Google Cloud Run using Terraform and GitHub Actions.

## Architecture

```
┌───────┐     ┌─────────┐     ┌────────────┐     ┌───────────┐
│ Code  │────▶│ GitHub  │────▶│ Cloud Build│────▶│ Cloud Run │
│(Git)  │     │ Actions │     │ (Registry) │     │ (Server)  │
└───────┘     └─────────┘     └────────────┘     └───────────┘
```

## Features

- **Go Application**: Lightweight web server
- **Containerization**: Optimized Dockerfile (multi-stage build)
- **Infrastructure as Code**: Terraform to provision Cloud Run service
- **CI/CD**: GitHub Actions for automated deployment

## Prerequisites

- Google Cloud Platform Account
- GCP Project with Billing enabled
- `gcloud` CLI
- Terraform

## Quick Start (Terraform)

1.  **Authenticate**:
    ```bash
    gcloud auth application-default login
    ```

2.  **Initialize & Apply**:
    ```bash
    cd terraform
    terraform init
    terraform apply -var="project_id=YOUR_PROJECT_ID" -var="image_name=gcr.io/YOUR_PROJECT_ID/go-hello-world"
    ```

## Quick Start (CI/CD)

1.  **Secrets**: Add the following secrets to your GitHub Repo:
    - `GCP_PROJECT_ID`: Your Google Cloud Project ID
    - `GCP_SA_KEY`: JSON Key of a Service Account with Cloud Run Admin and Storage Admin roles.

2.  **Push**: Push to `main` branch to trigger deployment.

## Author

Ramchandra Chintala
