/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


variable "filestore_name" {
  description = "name - (Required) The resource name of the instance."
}

variable "zone" {
  description = "zone - (Required) The name of the Filestore zone of the instance."
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

