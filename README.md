# terraform-google-filestore

This module was generated from [terraform-google-module-template](https://github.com/terraform-google-modules/terraform-google-module-template/), which by default generates a module that simply creates a Filestore share. As the module develops, this README will be updated.

The resources/services/activations/deletions that this module will create/trigger are:

- Create a Filestore share with the provided name

## Usage

Basic usage of this module is as follows:

```hcl
module "filestore" {
  source           = "github.com/mugithi/terraform-google-filestore"
  project_id       = "network-host-project-243718"
  filestore_name   = "filestorenew"
  zone             = "us-central1-a"
  tier             = "PREMIUM"
  capacity_gb      = 2560
  file_shares_name = "filestore"
  network          = "default"
  modes            = ["MODE_IPV4"]
}
```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| capacity\_gb | capacity_gb - (Required) File share capacity in GiB. This must be at least 1024 GiB for the standard tier, or 2560 GiB for the premium tier. | string | n/a | yes |
| file\_shares\_name | file_shares_name - (Required) The name of the fileshare (16 characters or less) | string | n/a | yes |
| filestore\_name | name - (Required) The resource name of the instance. | string | n/a | yes |
| modes | modes - (Required) IP versions for which the instance has IP addresses assigned. | string | n/a | yes |
| network | network - (Required) The name of the GCP VPC network to which the instance is connected. | string | n/a | yes |
| project\_id | the project ID which the resource belongs. | string | n/a | yes |
| tier | tier - (Required) The service tier of the instance. Can be PREMIUM or STANDARD | string | `"PREMIUM"` | no |
| zone | zone - (Required) The name of the Filestore zone of the instance. | string | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| filestore\_all\_parameters | All available paremeters of this a filestore instance |
| filestore\_ip | A list of IPv4 or IPv6 addresses that can be used to mount this file share |
| filestore\_name | File system shares on the instance. For this version, only a single file share is supported. |
| id | GCP ID of the Filestore resource |
| reserved\_ip\_range | A /29 CIDR block in one of the internal IP address ranges that identifies the range of IP addresses reserved for this instance. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.12
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v2.0

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- Cloud Filestore Editor: `roles/file.editor`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Google Filestore API: `file.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

[iam-module]: https://registry.terraform.io/modules/terraform-google-modules/iam/google
[project-factory-module]: https://registry.terraform.io/modules/terraform-google-modules/project-factory/google
[terraform-provider-gcp]: https://www.terraform.io/docs/providers/google/index.html
[terraform]: https://www.terraform.io/downloads.html
