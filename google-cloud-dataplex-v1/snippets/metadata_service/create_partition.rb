# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START dataplex_v1_generated_MetadataService_CreatePartition_sync]
require "google/cloud/dataplex/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Dataplex::V1::MetadataService::Client#create_partition
#
def create_partition
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataplex::V1::MetadataService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataplex::V1::CreatePartitionRequest.new

  # Call the create_partition method.
  result = client.create_partition request

  # The returned object is of type Google::Cloud::Dataplex::V1::Partition.
  p result
end
# [END dataplex_v1_generated_MetadataService_CreatePartition_sync]
