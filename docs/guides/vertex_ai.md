# Guide: Google Vertex AI Credentials

This guide explains how to obtain the required credentials for the Google Vertex AI integration. Authentication is typically handled via a GCP Service Account.

## Required Secrets

-   `service_account_key_json`
-   `project_id`
-   `region`

## Instructions

### 1. Enable the Vertex AI API

First, ensure the Vertex AI API is enabled for your project.

-   **Link**: [Enable Vertex AI API](https://console.cloud.google.com/flows/enableapi?apiid=aiplatform.googleapis.com)

### 2. Service Account Key (JSON)

Vertex AI uses the same service account mechanism as the rest of GCP.

-   **Official Documentation**: [Google Cloud: Set up authentication for Vertex AI](https://cloud.google.com/vertex-ai/docs/authentication)

-   **Steps**:
    1.  Follow the standard GCP process for creating a service account key, as detailed in the [GCP Guide](gcp.md).
    2.  **Important**: Ensure the service account has the appropriate IAM role for Vertex AI, such as **Vertex AI User** (`roles/aiplatform.user`). You can grant this role on the IAM page in the Cloud Console.

### 3. Project ID

The unique identifier for your Google Cloud project.

-   **Instructions**: Follow the steps in the [GCP Guide](gcp.md#2-project-id) to find your Project ID.

### 4. Region

The GCP region where you will be running your Vertex AI jobs (e.g., `us-central1`).
