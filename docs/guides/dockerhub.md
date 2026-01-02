# Guide: Docker Hub Credentials

This guide explains how to obtain the required credentials for the Docker Hub integration.

## Required Secrets

-   `username`
-   `password` (or Access Token)

## Instructions

### 1. Username

This is your Docker ID (the username you use to log in to Docker Hub).

### 2. Password / Access Token

For security, it is highly recommended to use an **Access Token** instead of your actual password. Access Tokens can be scoped and easily revoked.

-   **Official Documentation**: [Docker Hub Docs: Access Tokens](https://docs.docker.com/docker-hub/access-tokens/)

-   **Steps to create an Access Token**:
    1.  Log in to your Docker Hub account.
    2.  Click on your username in the top-right corner and select **Account Settings**.
    3.  Navigate to the **Security** tab.
    4.  Click **New Access Token**.
    5.  Enter a description for the token (e.g., "Vault Integration").
    6.  Set the desired permissions (e.g., Read, Write, Delete).
    7.  Click **Generate**.
    8.  Copy the token value immediately. This is what you will use as the `password` in Vault.
