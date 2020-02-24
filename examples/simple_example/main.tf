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

# TF-UPGRADE-TODO: Top-level attributes are not valid, so this was not automatically upgraded.

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

