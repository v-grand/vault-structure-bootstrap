# Guide: Stripe Credentials

This guide explains how to obtain the required credentials for the Stripe API.

## Required Secrets

-   `secret_key`
-   `webhook_secret`

## Instructions

### 1. Secret Key

The `secret_key` is the main credential for authenticating with the Stripe API.

-   **Official Documentation**: [Stripe Docs: API Keys](https://stripe.com/docs/keys)

-   **Steps**:
    1.  Log in to your Stripe Dashboard.
    2.  Navigate to the **Developers** > **API Keys** page.
    3.  You will see your "Standard keys". The **Secret key** is the one you need.
    4.  **Important**: For security, it's best to create a new **Restricted API key** with only the permissions your application needs. Click **Create restricted key** to do this.
    5.  Click **Reveal live key** (or create a new key) and copy the value.

### 2. Webhook Secret

The `webhook_secret` is used to verify that incoming webhook events are genuinely from Stripe.

-   **Official Documentation**: [Stripe Docs: Webhook signatures](https://stripe.com/docs/webhooks/signatures)

-   **Steps**:
    1.  In your Stripe Dashboard, navigate to **Developers** > **Webhooks**.
    2.  Click **Add an endpoint**.
    3.  Enter your application's webhook URL and select the events to listen for.
    4.  After the endpoint is created, you will be taken to its details page.
    5.  Under the **Signing secret** section, click **Reveal**.
    6.  Copy this value. This is your `webhook_secret`.
