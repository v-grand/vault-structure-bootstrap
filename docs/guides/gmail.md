# Guide: Gmail Credentials

This guide explains how to obtain the required credentials for the Gmail API.

## Required Secrets

-   `client_id`
-   `client_secret`
-   `refresh_token`

## Instructions

The Gmail API uses the standard Google OAuth 2.0 authentication mechanism. The process for obtaining these credentials is the same as for the [Generic Google OAuth Guide](google.md).

### Key Steps

1.  **Enable the Gmail API**:
    -   Before creating credentials, make sure the **Gmail API** is enabled in your Google Cloud Project.
    -   [Enable the Gmail API here](https://console.cloud.google.com/flows/enableapi?apiid=gmail.googleapis.com).

2.  **Create OAuth 2.0 Credentials**:
    -   Follow the steps in the [Generic Google OAuth Guide](google.md#1-client-id-and-client-secret) to create your `client_id` and `client_secret`.

3.  **Generate a Refresh Token**:
    -   Follow the process in the [Generic Google OAuth Guide](google.md#2-refresh-token) to obtain a `refresh_token`. When requesting scopes during the consent flow, be sure to include the necessary Gmail scopes, such as `https://www.googleapis.com/auth/gmail.readonly`.
