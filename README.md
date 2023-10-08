# Terraform Module: Google Cloud URL Map

This Terraform module creates a Google Cloud URL Map and associated resources. It allows you to define a URL Map with a default service and path matching rules, as well as a Google Cloud Backend Bucket to serve static resources.

## Overview

The Google Cloud URL Map module provisions the following resources:

- **google_compute_url_map**: This resource defines the URL Map and its configuration, including a default service and path matching rules.

- **google_compute_backend_bucket**: This resource represents the Google Cloud Storage bucket for serving static resources.

## Usage

To use this module, include it in your Terraform configuration. Here's an example of how to use it:

```hcl
module "my_url_map" {
  source      = "git@github.com:shalb/terraform-gcs-bucket-backend.git?ref=0.0.1"
  name        = "my-url-map"
  bucket_name = "my-bucket"
}

output "url_map_self_link" {
  value = module.my_url_map.url_map_self_link
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.80.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 4.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_backend_bucket.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_backend_bucket) | resource |
| [google_compute_url_map.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_url_map) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | n/a | `string` | n/a | yes |
| <a name="input_content"></a> [content](#input\_content) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name for the forwarding rule and prefix for supporting resources | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_url_map_self_link"></a> [url\_map\_self\_link](#output\_url\_map\_self\_link) | n/a |
