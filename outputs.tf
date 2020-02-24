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

output "filestore_ip" {
  description = "A list of IPv4 or IPv6 addresses that can be used to mount this file share"
  value       = google_filestore_instance.instance.networks[0].ip_addresses[0]
}

output "filestore_name" {
  description = "File system shares on the instance. For this version, only a single file share is supported."
  value       = google_filestore_instance.instance.file_shares[0].name
}

output "filestore_all_parameters" {
  description = "All available paremeters of this a filestore instance"
  value       = google_filestore_instance.instance
}

output "reserved_ip_range" {
  description = "A /29 CIDR block in one of the internal IP address ranges that identifies the range of IP addresses reserved for this instance. "
  value       = google_filestore_instance.instance.networks[0].reserved_ip_range
}

output "id" {
  description = "GCP ID of the Filestore resource"
  value       = google_filestore_instance.instance.id
}
