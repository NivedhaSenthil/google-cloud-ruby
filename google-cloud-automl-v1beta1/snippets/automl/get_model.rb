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

# [START automl_v1beta1_generated_AutoML_GetModel_sync]
require "google/cloud/automl/v1beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::AutoML::V1beta1::AutoML::Client#get_model
#
def get_model
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::AutoML::V1beta1::AutoML::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::AutoML::V1beta1::GetModelRequest.new

  # Call the get_model method.
  result = client.get_model request

  # The returned object is of type Google::Cloud::AutoML::V1beta1::Model.
  p result
end
# [END automl_v1beta1_generated_AutoML_GetModel_sync]
