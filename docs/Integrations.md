# Интеграции

В этом разделе перечислены поддерживаемые интеграции и их структура ресурсов.

## Cloud Providers

### AWS
- `aws/aws_access_key_id`
- `aws/aws_secret_access_key`
- `aws/iam_role_arn`
- `aws/region`
- `aws/session_token`

### GCP
- `gcp/service_account_key_json`
- `gcp/project_id`
- `gcp/region`
- `gcp/zone`

### Azure
- `azure/client_id`
- `azure/client_secret`
- `azure/tenant_id`
- `azure/subscription_id`

## DevOps / Infrastructure

### Terraform
- `terraform/cloud_token`

### Cloudflare
- `cloudflare/api_token`
- `cloudflare/zone_id`

### GitHub
- `github/personal_access_token`
- `github/app_id`
- `github/private_key`
- `github/webhook_secret`

### GitLab
- `gitlab/token`

### Docker Hub
- `dockerhub/username`
- `dockerhub/password`

## CRM / Ads / Marketing

### HubSpot
- `hubspot/private_app_token`

### Google
- `google/client_id`
- `google/client_secret`
- `google/refresh_token`

### Google Ads
- `google_ads/developer_token`
- `google_ads/client_id`
- `google_ads/client_secret`
- `google_ads/refresh_token`

### Facebook Ads
- `facebook_ads/access_token`
- `facebook_ads/app_secret`
- `facebook_ads/app_id`

### TikTok Ads
- `tiktok_ads/access_token`
- `tiktok_ads/advertiser_id`
- `tiktok_ads/app_id`
- `tiktok_ads/secret`

## Communication / Messaging

### Telegram
- `telegram/bot_token`

### Discord
- `discord/bot_token`
- `discord/application_id`

### Slack
- `slack/bot_token`
- `slack/signing_secret`

### Gmail
- `gmail/client_id`
- `gmail/client_secret`
- `gmail/refresh_token`

## Project Management

### Jira
- `jira/api_token`
- `jira/email`
- `jira/base_url`

### Linear
- `linear/api_key`

### Notion
- `notion/api_key`

## Data Science / ML

### Kaggle
- `kaggle/username`
- `kaggle/key`

## Hosting Providers

### Hetzner Cloud
- `hetzner_cloud/api_token`
- `hetzner_cloud/region`

### Hetzner Dedicated
- `hetzner_dedicated/api_token`
- `hetzner_dedicated/region`

### Contabo
- `contabo/api_secret`
- `contabo/api_key`
- `contabo/oauth_client_id`
- `contabo/oauth_client_secret`
- `contabo/region`

### Scaleway
- `scaleway/access_key`
- `scaleway/secret_key`
- `scaleway/organization_id`
- `scaleway/region`

### OVHcloud
- `ovhcloud/application_key`
- `ovhcloud/application_secret`
- `ovhcloud/consumer_key`
- `ovhcloud/endpoint`
- `ovhcloud/region`

### Netcup
- `netcup/customer_number`
- `netcup/api_key`
- `netcup/api_password`
- `netcup/region`

### ArubaCloud
- `arubacloud/username`
- `arubacloud/password`
- `arubacloud/datacenter_id`
- `arubacloud/region`

### IONOS Cloud
- `ionos_cloud/username`
- `ionos_cloud/password`
- `ionos_cloud/token`
- `ionos_cloud/region`

### Exoscale
- `exoscale/api_key`
- `exoscale/api_secret`
- `exoscale/zone`

### UpCloud
- `upcloud/username`
- `upcloud/password`
- `upcloud/region`

### G-Core Labs
- `gcore_labs/api_token`
- `gcore_labs/region`

### Cherry Servers
- `cherry_servers/api_token`
- `cherry_servers/region`

### Time4VPS
- `time4vps/api_key`
- `time4vps/api_password`
- `time4vps/region`

### Hostinger Cloud
- `hostinger_cloud/api_key`
- `hostinger_cloud/region`

### DigitalOcean
- `digitalocean/api_token`
- `digitalocean/region`

### Vultr
- `vultr/api_key`
- `vultr/region`

### Linode (Akamai)
- `linode/api_token`
- `linode/region`

### Hostwinds
- `hostwinds/api_key`
- `hostwinds/username`
- `hostwinds/password`
- `hostwinds/region`

### DreamHost Cloud
- `dreamhost_cloud/api_key`
- `dreamhost_cloud/region`

### Kamatera
- `kamatera/client_id`
- `kamatera/api_secret`
- `kamatera/region`

### CloudSigma
- `cloudsigma/username`
- `cloudsigma/password`
- `cloudsigma/region`

### GreenCloud VPS
- `greencloud_vps/api_key`
- `greencloud_vps/region`

### RackNerd
- `racknerd/api_key`
- `racknerd/region`

### InterServer
- `interserver/api_key`
- `interserver/username`
- `interserver/password`
- `interserver/region`

### Alibaba Cloud
- `alibaba_cloud/access_key_id`
- `alibaba_cloud/access_key_secret`
- `alibaba_cloud/region`

### Tencent Cloud
- `tencent_cloud/secret_id`
- `tencent_cloud/secret_key`
- `tencent_cloud/region`

### Huawei Cloud
- `huawei_cloud/access_key`
- `huawei_cloud/secret_key`
- `huawei_cloud/project_id`
- `huawei_cloud/region`

### Leaseweb
- `leaseweb/api_key`
- `leaseweb/region`

### Liquid Web
- `liquid_web/api_key`
- `liquid_web/username`
- `liquid_web/password`
- `liquid_web/region`

### Equinix Metal
- `equinix_metal/api_token`
- `equinix_metal/project_id`
- `equinix_metal/organization_id`
- `equinix_metal/facility`

### Oracle Cloud
- `oracle_cloud/tenancy_ocid`
- `oracle_cloud/user_ocid`
- `oracle_cloud/fingerprint`
- `oracle_cloud/private_key`
- `oracle_cloud/region`

### IBM Cloud
- `ibm_cloud/api_key`
- `ibm_cloud/region`
- `ibm_cloud/resource_group_id`

## Database Providers

### Qdrant Cloud
- `qdrant_cloud/api_key`
- `qdrant_cloud/url`

### Supabase
- `supabase/anon_key`
- `supabase/service_role_key`
- `supabase/url`

### Neon
- `neon/connection_string`
- `neon/api_key`

### PlanetScale
- `planetscale/connection_string`
- `planetscale/api_token`

### Turso (libSQL)
- `turso/db_url`
- `turso/auth_token`

### MongoDB Atlas
- `mongodb_atlas/connection_string`
- `mongodb_atlas/username`
- `mongodb_atlas/password`

### Redis Cloud (Redis Enterprise)
- `redis_cloud/connection_string`
- `redis_cloud/username`
- `redis_cloud/password`

### Upstash
- `upstash/redis_url`
- `upstash/redis_token`
- `upstash/kafka_url`
- `upstash/kafka_username`
- `upstash/kafka_password`

### FireStore (Firebase)
- `firestore/service_account_key_json`
- `firestore/project_id`

### FaunaDB
- `faunadb/secret`

### Weaviate Cloud
- `weaviate_cloud/api_key`
- `weaviate_cloud/url`

### Pinecone
- `pinecone/api_key`
- `pinecone/environment`

### Milvus Zilliz Cloud
- `milvus_zilliz_cloud/api_key`
- `milvus_zilliz_cloud/url`

### CockroachDB Serverless
- `cockroachdb_serverless/connection_string`

### TiDB Cloud
- `tidb_cloud/connection_string`
- `tidb_cloud/api_key`

### Timescale Cloud
- `timescale_cloud/connection_string`
- `timescale_cloud/api_key`

### InfluxDB Cloud
- `influxdb_cloud/token`
- `influxdb_cloud/org`
- `influxdb_cloud/url`

### HarperDB Cloud
- `harperdb_cloud/username`
- `harperdb_cloud/password`
- `harperdb_cloud/url`

### SurrealDB Cloud
- `surrealdb_cloud/username`
- `surrealdb_cloud/password`
- `surrealdb_cloud/url`

### EdgeDB Cloud
- `edgedb_cloud/dsn`
- `edgedb_cloud/api_key`

### Neurelo
- `neurelo/api_key`
- `neurelo/base_url`

### Xata
- `xata/api_key`
- `xata/database_url`

### AstraDB (DataStax)
- `astradb/token`
- `astradb/api_endpoint`

### DynamoDB (AWS)
- `dynamodb/aws_access_key_id`
- `dynamodb/aws_secret_access_key`
- `dynamodb/region`

### Azure Cosmos DB
- `azure_cosmos_db/connection_string`
- `azure_cosmos_db/master_key`

### Google Cloud Firestore
- `google_cloud_firestore/service_account_key_json`
- `google_cloud_firestore/project_id`

### Google Cloud Spanner
- `google_cloud_spanner/instance_id`
- `google_cloud_spanner/database_id`
- `google_cloud_spanner/project_id`
- `google_cloud_spanner/service_account_key_json`

### Neon + Drizzle
- `neon_drizzle/connection_string`
- `neon_drizzle/api_key`

### Railway
- `railway/api_token`
- `railway/project_id`
- `railway/environment_id`

### Render
- `render/api_key`
- `render/service_id`
