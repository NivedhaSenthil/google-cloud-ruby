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

# [START cloudasset_v1_generated_AssetService_UpdateFeed_sync]
require "google/cloud/asset/v1"

##
# Example demonstrating basic usage of
# Google::Cloud::Asset::V1::AssetService::Client#update_feed
#
def update_feed
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Asset::V1::AssetService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Asset::V1::UpdateFeedRequest.new

  # Call the update_feed method.
  result = client.update_feed request

  # The returned object is of type Google::Cloud::Asset::V1::Feed.
  p result
end
# [END cloudasset_v1_generated_AssetService_UpdateFeed_sync]
