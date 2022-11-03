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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/dataform/v1beta1/version"

require "google/cloud/dataform/v1beta1/dataform/credentials"
require "google/cloud/dataform/v1beta1/dataform/paths"
require "google/cloud/dataform/v1beta1/dataform/client"

module Google
  module Cloud
    module Dataform
      module V1beta1
        ##
        # Dataform is a service to develop, create, document, test, and update curated
        # tables in BigQuery.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/dataform/v1beta1/dataform"
        #     client = ::Google::Cloud::Dataform::V1beta1::Dataform::Client.new
        #
        module Dataform
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "dataform", "helpers.rb"
require "google/cloud/dataform/v1beta1/dataform/helpers" if ::File.file? helper_path
