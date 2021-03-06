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
  value       = module.filestore.filestore_ip
}

output "filestore_name" {
  description = "File system shares on the instance. For this version, only a single file share is supported."
  value       = module.filestore.filestore_name
}
