variable "filestore_name" {
  description = "name - (Required) The resource name of the instance."
}

variable "zone" {
  description = "zone - (Required) The name of the Filestore zone of the instance."
  default = "us-central1-a"
}

variable "tier" {
  description = "tier - (Required) The service tier of the instance. Can be PREMIUM or STANDARD"
  default = "PREMIUM"
}

variable "capacity_gb" {
  description = "capacity_gb - (Required) File share capacity in GiB. This must be at least 1024 GiB for the standard tier, or 2560 GiB for the premium tier."
}

variable "file_shares_name" {
  description = "file_shares_name - (Required) The name of the fileshare (16 characters or less)"
}

variable "network" {
  description = "network - (Required) The name of the GCP VPC network to which the instance is connected."
  default = ["MODE_IPV4"]
}

variable "modes" {
  description = "modes - (Required) IP versions for which the instance has IP addresses assigned."
}