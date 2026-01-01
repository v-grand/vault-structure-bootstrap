# Guide: Cloudflare Credentials

This guide explains how to obtain the required credentials for the Cloudflare integration.

## Required Secrets

-   `api_token`
-   `zone_id`

## Instructions

### 1. API Token

Cloudflare's modern security model relies on scoped API tokens, which are more secure than the legacy global API key.

-   **Official Documentation**: [Cloudflare Docs: Creating API tokens](https://developers.cloudflare.com/api/tokens/create/)

-   **Steps**:
    1.  Log in to your Cloudflare dashboard.
    2.  Go to **My Profile** -> **API Tokens**.
    3.  Click **Create Token**.
    4.  You can use a template (e.g., "Edit zone DNS") or create a custom token.
    5.  Configure the permissions and the zone resources the token should have access to.
    6.  Continue to summary and click **Create Token**.
    7.  Copy the token value immediately.

### 2. Zone ID

The `zone_id` is the unique identifier for a domain (or "zone") in your Cloudflare account.

-   **Steps**:
    1.  Log in to your Cloudflare dashboard.
    2.  Select the domain you want to manage.
    3.  On the **Overview** page for that domain, scroll down to the **API** section on the right-hand side.
    4.  You will find the `Zone ID`. You can click to copy it.
