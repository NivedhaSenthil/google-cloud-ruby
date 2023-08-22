# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/config/v1/version"

require "google/cloud/config/v1/config/credentials"
require "google/cloud/config/v1/config/paths"
require "google/cloud/config/v1/config/operations"
require "google/cloud/config/v1/config/client"
require "google/cloud/config/v1/config/rest"

module Google
  module Cloud
    module Config
      module V1
        ##
        # Infrastructure Manager is a managed service that automates the deployment and
        # management of Google Cloud infrastructure resources.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/config/v1/config"
        #     client = ::Google::Cloud::Config::V1::Config::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/config/v1/config/rest"
        #     client = ::Google::Cloud::Config::V1::Config::Rest::Client.new
        #
        module Config
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "config", "helpers.rb"
require "google/cloud/config/v1/config/helpers" if ::File.file? helper_path
