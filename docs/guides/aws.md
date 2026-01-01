# Guide: AWS Credentials

This guide explains how to obtain the required credentials for the AWS integration.

## Required Secrets

-   `aws_access_key_id`
-   `aws_secret_access_key`
-   `iam_role_arn`
-   `region`
-   `session_token` (optional)

## Instructions

### 1. Access Key and Secret Key

These are the standard credentials for an IAM (Identity and Access Management) user.

-   **Official Documentation**: [AWS: Managing access keys for IAM users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey)
-   **Steps**:
    1.  Navigate to the IAM console in AWS.
    2.  Go to "Users" and select the desired user.
    3.  Go to the "Security credentials" tab.
    4.  Click "Create access key".
    5.  Choose "Application running outside AWS" as the use case.
    6.  **Important**: Copy the `Access key ID` and `Secret access key` immediately. The secret key will not be shown again.

### 2. IAM Role ARN

The Amazon Resource Name (ARN) of an IAM role that your application might need to assume for cross-account access or elevated permissions.

-   **Official Documentation**: [AWS: Creating IAM roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create.html)
-   **Steps**:
    1.  Navigate to the IAM console and go to "Roles".
    2.  Click "Create role".
    3.  Select the trusted entity (e.g., another AWS account, a web identity).
    4.  Attach the required permissions policies.
    5.  After creation, find the role and copy its `ARN`.

### 3. Region

The AWS region where your resources are located (e.g., `us-east-1`, `eu-west-1`). This is not a secret but is required for API calls.

### 4. Session Token

A temporary token for sessions created via AWS STS (Security Token Service). This is usually obtained programmatically within an application and is not something you would typically store long-term in Vault, but the path is provided for completeness.

-   **Official Documentation**: [AWS: Requesting temporary security credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html)
