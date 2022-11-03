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

# [START baremetalsolution_v2_generated_BareMetalSolution_GetNetwork_sync]
require "google/cloud/bare_metal_solution/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client#get_network
#
def get_network
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BareMetalSolution::V2::GetNetworkRequest.new

  # Call the get_network method.
  result = client.get_network request

  # The returned object is of type Google::Cloud::BareMetalSolution::V2::Network.
  p result
end
# [END baremetalsolution_v2_generated_BareMetalSolution_GetNetwork_sync]
