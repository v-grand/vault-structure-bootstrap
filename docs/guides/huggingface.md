# Guide: Hugging Face Credentials

This guide explains how to obtain the required credentials for the Hugging Face Hub and Inference APIs.

## Required Secrets

-   `api_token`

## Instructions

### 1. User Access Token

Hugging Face uses User Access Tokens for authentication.

-   **Official Documentation**: [Hugging Face Docs: User access tokens](https://huggingface.co/docs/hub/security-tokens)

-   **Steps**:
    1.  Log in to your Hugging Face account.
    2.  Go to your **Settings** page by clicking your profile picture in the top-right corner.
    3.  In the left sidebar, navigate to the **Access Tokens** tab.
    4.  Click **New token**.
    5.  Give the token a name and select a role (e.g., `read` or `write`).
    6.  Click **Generate a token**.
    7.  Copy the token value immediately.
