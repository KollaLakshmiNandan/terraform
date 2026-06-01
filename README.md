# terraform
# Terraform Learning Journey - Hands-On Practice

## Overview

Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp that allows infrastructure to be created, modified, and managed using code instead of manual operations through cloud portals.

Infrastructure as Code helps organizations automate infrastructure provisioning, reduce manual errors, maintain consistency across environments, and enable version control for infrastructure.

---

# What I Learned in Terraform

## 1. Infrastructure as Code (IaC)

Infrastructure can be managed through code rather than manually creating resources through cloud consoles.

### Benefits

* Automation of infrastructure deployment
* Consistency across environments
* Reduced human errors
* Version-controlled infrastructure
* Faster provisioning and management

---

## 2. Terraform Architecture

Terraform follows the below architecture:

```text
Terraform Configuration
          │
          ▼
Terraform Core
          │
          ▼
Providers
          │
          ▼
Cloud Platform / Infrastructure
```

### Components

#### Terraform Configuration

Written using HashiCorp Configuration Language (HCL).

#### Terraform Core

Responsible for reading configurations, creating execution plans, and managing state.

#### Providers

Providers act as plugins that allow Terraform to communicate with infrastructure platforms.

Examples:

* AWS Provider
* Azure Provider
* Google Cloud Provider
* Local Provider

#### Resources

Resources represent infrastructure components managed by Terraform.

Examples:

* Virtual Machines
* Storage Accounts
* Networks
* Local Files

---

## 3. Terraform Workflow

### Initialize

```bash
terraform init
```

Downloads required providers and initializes the working directory.

### Validate

```bash
terraform validate
```

Validates Terraform configuration syntax.

### Plan

```bash
terraform plan
```

Displays the changes Terraform will make before applying them.

### Apply

```bash
terraform apply
```

Creates or updates infrastructure.

### Destroy

```bash
terraform destroy
```

Deletes infrastructure managed by Terraform.

---

## 4. Terraform State File

Terraform automatically creates:

```text
terraform.tfstate
```

### Purpose

The state file stores information about infrastructure resources managed by Terraform.

### Importance

* Tracks infrastructure resources
* Maintains resource metadata
* Detects infrastructure changes
* Enables updates and deletions

---

# Hands-On Use Case 1: Local File Creation

## Objective

Learn Terraform fundamentals by creating and managing a local file using Terraform.

## Technologies Used

* Terraform
* Local Provider

## Resource Created

```hcl
resource "local_file" "employee_data"
```

## Functionality

Terraform creates a file named:

```text
employees.txt
```

containing employee information.

### Sample Output

```text
Employee Name : Nandan
Department    : Data Engineering
Technology    : Terraform
Environment   : Development
```

## Concepts Learned

### Resource Creation

Understanding how Terraform resources are defined and managed.

### Terraform State

Observed how Terraform tracks resources using the state file.

### Infrastructure Lifecycle

Performed:

* Create
* Update
* Delete

operations using Terraform commands.

### Idempotency

Terraform ensures repeated execution produces the same result unless configuration changes.

---

# Hands-On Use Case 2: Environment-Based Deployment

## Objective

Learn how to manage multiple environments using variables and tfvars files.

## Project Structure

```text
usecase2/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── dev.tfvars
├── qa.tfvars
└── prod.tfvars
```

## Variables Used

```hcl
variable "environment"
variable "application_name"
```

## Environment Files

### Development

```hcl
environment = "dev"
```

### QA

```hcl
environment = "qa"
```

### Production

```hcl
environment = "prod"
```

## Resource Created

Terraform dynamically generates configuration files based on the selected environment.

Examples:

```text
dev-config.txt
qa-config.txt
prod-config.txt
```

## Commands Used

### Deploy Development Environment

```bash
terraform apply -var-file="dev.tfvars"
```

### Deploy QA Environment

```bash
terraform apply -var-file="qa.tfvars"
```

### Deploy Production Environment

```bash
terraform apply -var-file="prod.tfvars"
```

## Concepts Learned

### Variables

Used to make configurations reusable and dynamic.

### tfvars Files

Used to provide environment-specific values.

### Outputs

Displayed generated file names after deployment.

### Environment-Based Deployments

Managed Development, QA, and Production environments using a single Terraform codebase.

### DRY Principle

Avoided duplicate code by reusing the same Terraform configuration across multiple environments.

---

# Key Terraform Concepts Learned

* Infrastructure as Code (IaC)
* Terraform Architecture
* Providers
* Resources
* Terraform Workflow
* Terraform State File
* Variables
* tfvars Files
* Outputs
* Environment-Based Deployments
* Resource Lifecycle Management
* Idempotency
* DRY Principle

---

# Future Learning Goals

* Terraform Modules
* AWS Infrastructure Deployment
* Azure Infrastructure Deployment
* VPC and Networking
* Virtual Machine Provisioning
* Remote State Management
* Terraform Workspaces
* CI/CD Integration with Terraform
* Multi-Cloud Deployments
* Enterprise Terraform Best Practices
