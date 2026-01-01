# Guide: Terraform Credentials

This guide explains how to obtain the required credentials for the Terraform integration.

## Required Secrets

-   `cloud_token`

## Instructions

### 1. Terraform Cloud / Enterprise Token

This token is used to authenticate with the Terraform Cloud or Terraform Enterprise API.

-   **Official Documentation**: [Terraform Cloud Docs: User API Tokens](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/api-tokens)

-   **Steps**:
    1.  Log in to your Terraform Cloud account.
    2.  Navigate to **User Settings** by clicking your profile icon.
    3.  Go to the **Tokens** page.
    4.  Click **Create an API token**.
    5.  Give the token a description.
    6.  Click **Create API token** and copy the token value immediately. It will not be shown again.
