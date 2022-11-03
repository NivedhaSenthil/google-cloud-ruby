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

# [START storagetransfer_v1_generated_StorageTransferService_PauseTransferOperation_sync]
require "google/cloud/storage_transfer/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::StorageTransfer::V1::StorageTransferService::Client#pause_transfer_operation
#
def pause_transfer_operation
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::StorageTransfer::V1::StorageTransferService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::StorageTransfer::V1::PauseTransferOperationRequest.new

  # Call the pause_transfer_operation method.
  result = client.pause_transfer_operation request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END storagetransfer_v1_generated_StorageTransferService_PauseTransferOperation_sync]
