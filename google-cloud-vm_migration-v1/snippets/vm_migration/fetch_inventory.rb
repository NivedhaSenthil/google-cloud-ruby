# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START vmmigration_v1_generated_VMMigration_FetchInventory_sync]
require "google/cloud/vm_migration/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::VMMigration::V1::VMMigration::Client#fetch_inventory
#
def fetch_inventory
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::VMMigration::V1::VMMigration::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::VMMigration::V1::FetchInventoryRequest.new

  # Call the fetch_inventory method.
  result = client.fetch_inventory request

  # The returned object is of type Google::Cloud::VMMigration::V1::FetchInventoryResponse.
  p result
end
# [END vmmigration_v1_generated_VMMigration_FetchInventory_sync]
