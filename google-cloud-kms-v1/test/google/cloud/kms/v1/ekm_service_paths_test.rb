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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/kms/v1/ekm_service"

class ::Google::Cloud::Kms::V1::EkmService::ClientPathsTest < Minitest::Test
  def test_ekm_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::EkmService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ekm_config_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1/ekmConfig", path
    end
  end

  def test_ekm_connection_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::EkmService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ekm_connection_path project: "value0", location: "value1", ekm_connection: "value2"
      assert_equal "projects/value0/locations/value1/ekmConnections/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::EkmService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Kms::V1::EkmService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_path project: "value0", location: "value1", namespace: "value2", service: "value3"
      assert_equal "projects/value0/locations/value1/namespaces/value2/services/value3", path
    end
  end
end
