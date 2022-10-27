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

require "google/cloud/speech/v2/version"

require "google/cloud/speech/v2/speech/credentials"
require "google/cloud/speech/v2/speech/paths"
require "google/cloud/speech/v2/speech/operations"
require "google/cloud/speech/v2/speech/client"

module Google
  module Cloud
    module Speech
      module V2
        ##
        # Enables speech transcription and resource management.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/speech/v2/speech"
        #     client = ::Google::Cloud::Speech::V2::Speech::Client.new
        #
        module Speech
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "speech", "helpers.rb"
require "google/cloud/speech/v2/speech/helpers" if ::File.file? helper_path