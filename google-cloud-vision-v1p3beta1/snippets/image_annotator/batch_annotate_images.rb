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

# [START vision_v1p3beta1_generated_ImageAnnotator_BatchAnnotateImages_sync]
require "google/cloud/vision/v1p3beta1"

##
# Example demonstrating basic usage of
# Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client#batch_annotate_images
#
def batch_annotate_images
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Vision::V1p3beta1::ImageAnnotator::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesRequest.new

  # Call the batch_annotate_images method.
  result = client.batch_annotate_images request

  # The returned object is of type Google::Cloud::Vision::V1p3beta1::BatchAnnotateImagesResponse.
  p result
end
# [END vision_v1p3beta1_generated_ImageAnnotator_BatchAnnotateImages_sync]
