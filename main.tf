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

resource "google_filestore_instance" "instance" {
  name    = var.filestore_name
  zone    = var.zone
  tier    = var.tier
  project = var.project_id

  file_shares {
    capacity_gb = var.capacity_gb
    name        = var.file_shares_name
  }

  networks {
    network = var.network
    modes   = var.modes
  }
}

