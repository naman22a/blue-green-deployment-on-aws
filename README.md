# Blue-Green Deployment on AWS

A DevOps project to build an automated blue-green deployment pipeline for an NGINX application using AWS, Terraform, Docker, and GitHub Actions.

## Tech Stack

- **Application:** NGINX + HTML
- **Containerization:** Docker
- **Cloud:** AWS
- **Infrastructure as Code:** Terraform
- **CI/CD:** GitHub Actions
- **Container Registry:** Amazon ECR
- **Deployment:** Amazon ECS + Application Load Balancer
- **Monitoring:** Amazon CloudWatch

## Project Structure

```text
blue-green-deployment-on-aws/
├── app/
│   ├── index.html
│   ├── Dockerfile
│   └── nginx.conf
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── providers.tf
│   └── versions.tf
├── .github/
│   └── workflows/
│       ├── ci.yml
│       └── deploy.yml
├── scripts/
├── .gitignore
└── README.md
```

## Implementation Plan

- [x] Create a simple NGINX webpage.
- [x] Build and test the Docker image locally.
- [x] Create AWS infrastructure using Terraform.
- [x] Configure Amazon ECR to store container images.
- [] Configure GitHub Actions with AWS OIDC authentication.
- [] Automate image builds and pushes.
- [] Deploy the application using Amazon ECS.
- [] Configure an Application Load Balancer.
- [] Implement blue-green deployments.
- [] Add deployment health checks and smoke tests.
- [] Configure CloudWatch monitoring and alarms.
- [] Test failed deployments and rollback.
- [] Document the architecture and deployment process.
- [] Destroy unused AWS resources to control costs.

## Blue-Green Deployment Workflow

1. Deploy the current version (Blue).
2. Build and deploy the new version (Green).
3. Validate the new version using health checks.
4. Shift traffic to Green.
5. Verify the deployment.
6. Roll back to Blue if validation fails.

## Goals

- Automate deployments from GitHub to AWS.
- Provision infrastructure using Terraform.
- Minimize downtime during releases.
- Implement reliable health checks and rollback.
- Follow secure AWS authentication practices.
- Keep infrastructure reproducible and cost-conscious.
