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

require "helper"
require "gapic/rest"
require "google/api/servicemanagement/v1/servicemanager_pb"
require "google/cloud/service_management/v1/service_manager/rest"


class ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_list_services
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::ListServicesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    producer_project_id = "hello world"
    page_size = 42
    page_token = "hello world"
    consumer_id = "hello world"

    list_services_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_list_services_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_services_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_services({ producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_services producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_services ::Google::Cloud::ServiceManagement::V1::ListServicesRequest.new(producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_services({ producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_services(::Google::Cloud::ServiceManagement::V1::ListServicesRequest.new(producer_project_id: producer_project_id, page_size: page_size, page_token: page_token, consumer_id: consumer_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_services_client_stub.call_count
      end
    end
  end

  def test_get_service
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::ManagedService.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    get_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_get_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_service({ service_name: service_name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_service service_name: service_name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_service ::Google::Cloud::ServiceManagement::V1::GetServiceRequest.new(service_name: service_name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_service({ service_name: service_name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_service(::Google::Cloud::ServiceManagement::V1::GetServiceRequest.new(service_name: service_name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_service_client_stub.call_count
      end
    end
  end

  def test_create_service
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service = {}

    create_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_create_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_service({ service: service }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_service service: service do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_service ::Google::Cloud::ServiceManagement::V1::CreateServiceRequest.new(service: service) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_service({ service: service }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_service(::Google::Cloud::ServiceManagement::V1::CreateServiceRequest.new(service: service), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_service_client_stub.call_count
      end
    end
  end

  def test_delete_service
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    delete_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_delete_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_service({ service_name: service_name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_service service_name: service_name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_service ::Google::Cloud::ServiceManagement::V1::DeleteServiceRequest.new(service_name: service_name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_service({ service_name: service_name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_service(::Google::Cloud::ServiceManagement::V1::DeleteServiceRequest.new(service_name: service_name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_service_client_stub.call_count
      end
    end
  end

  def test_undelete_service
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"

    undelete_service_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_undelete_service_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, undelete_service_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.undelete_service({ service_name: service_name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.undelete_service service_name: service_name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.undelete_service ::Google::Cloud::ServiceManagement::V1::UndeleteServiceRequest.new(service_name: service_name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.undelete_service({ service_name: service_name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.undelete_service(::Google::Cloud::ServiceManagement::V1::UndeleteServiceRequest.new(service_name: service_name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, undelete_service_client_stub.call_count
      end
    end
  end

  def test_list_service_configs
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::ListServiceConfigsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    page_token = "hello world"
    page_size = 42

    list_service_configs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_list_service_configs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_service_configs_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_service_configs({ service_name: service_name, page_token: page_token, page_size: page_size }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_service_configs service_name: service_name, page_token: page_token, page_size: page_size do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_service_configs ::Google::Cloud::ServiceManagement::V1::ListServiceConfigsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_service_configs({ service_name: service_name, page_token: page_token, page_size: page_size }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_service_configs(::Google::Cloud::ServiceManagement::V1::ListServiceConfigsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_service_configs_client_stub.call_count
      end
    end
  end

  def test_get_service_config
    # Create test objects.
    client_result = ::Google::Api::Service.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    config_id = "hello world"
    view = :BASIC

    get_service_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_get_service_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_service_config_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_service_config({ service_name: service_name, config_id: config_id, view: view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_service_config service_name: service_name, config_id: config_id, view: view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_service_config ::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest.new(service_name: service_name, config_id: config_id, view: view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_service_config({ service_name: service_name, config_id: config_id, view: view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_service_config(::Google::Cloud::ServiceManagement::V1::GetServiceConfigRequest.new(service_name: service_name, config_id: config_id, view: view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_service_config_client_stub.call_count
      end
    end
  end

  def test_create_service_config
    # Create test objects.
    client_result = ::Google::Api::Service.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    service_config = {}

    create_service_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_create_service_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_service_config_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_service_config({ service_name: service_name, service_config: service_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_service_config service_name: service_name, service_config: service_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_service_config ::Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest.new(service_name: service_name, service_config: service_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_service_config({ service_name: service_name, service_config: service_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_service_config(::Google::Cloud::ServiceManagement::V1::CreateServiceConfigRequest.new(service_name: service_name, service_config: service_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_service_config_client_stub.call_count
      end
    end
  end

  def test_submit_config_source
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    config_source = {}
    validate_only = true

    submit_config_source_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_submit_config_source_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, submit_config_source_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.submit_config_source({ service_name: service_name, config_source: config_source, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.submit_config_source service_name: service_name, config_source: config_source, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.submit_config_source ::Google::Cloud::ServiceManagement::V1::SubmitConfigSourceRequest.new(service_name: service_name, config_source: config_source, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.submit_config_source({ service_name: service_name, config_source: config_source, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.submit_config_source(::Google::Cloud::ServiceManagement::V1::SubmitConfigSourceRequest.new(service_name: service_name, config_source: config_source, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, submit_config_source_client_stub.call_count
      end
    end
  end

  def test_list_service_rollouts
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    page_token = "hello world"
    page_size = 42
    filter = "hello world"

    list_service_rollouts_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_list_service_rollouts_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_service_rollouts_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_service_rollouts({ service_name: service_name, page_token: page_token, page_size: page_size, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_service_rollouts service_name: service_name, page_token: page_token, page_size: page_size, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_service_rollouts ::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_service_rollouts({ service_name: service_name, page_token: page_token, page_size: page_size, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_service_rollouts(::Google::Cloud::ServiceManagement::V1::ListServiceRolloutsRequest.new(service_name: service_name, page_token: page_token, page_size: page_size, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_service_rollouts_client_stub.call_count
      end
    end
  end

  def test_get_service_rollout
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::Rollout.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    rollout_id = "hello world"

    get_service_rollout_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_get_service_rollout_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_service_rollout_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_service_rollout({ service_name: service_name, rollout_id: rollout_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_service_rollout service_name: service_name, rollout_id: rollout_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_service_rollout ::Google::Cloud::ServiceManagement::V1::GetServiceRolloutRequest.new(service_name: service_name, rollout_id: rollout_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_service_rollout({ service_name: service_name, rollout_id: rollout_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_service_rollout(::Google::Cloud::ServiceManagement::V1::GetServiceRolloutRequest.new(service_name: service_name, rollout_id: rollout_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_service_rollout_client_stub.call_count
      end
    end
  end

  def test_create_service_rollout
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    rollout = {}

    create_service_rollout_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_create_service_rollout_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_service_rollout_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_service_rollout({ service_name: service_name, rollout: rollout }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_service_rollout service_name: service_name, rollout: rollout do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_service_rollout ::Google::Cloud::ServiceManagement::V1::CreateServiceRolloutRequest.new(service_name: service_name, rollout: rollout) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_service_rollout({ service_name: service_name, rollout: rollout }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_service_rollout(::Google::Cloud::ServiceManagement::V1::CreateServiceRolloutRequest.new(service_name: service_name, rollout: rollout), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_service_rollout_client_stub.call_count
      end
    end
  end

  def test_generate_config_report
    # Create test objects.
    client_result = ::Google::Cloud::ServiceManagement::V1::GenerateConfigReportResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    new_config = {}
    old_config = {}

    generate_config_report_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::ServiceStub.stub :transcode_generate_config_report_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_config_report_client_stub do
        # Create client
        client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_config_report({ new_config: new_config, old_config: old_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_config_report new_config: new_config, old_config: old_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_config_report ::Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest.new(new_config: new_config, old_config: old_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_config_report({ new_config: new_config, old_config: old_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_config_report(::Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest.new(new_config: new_config, old_config: old_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_config_report_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ServiceManagement::V1::ServiceManager::Rest::Client::Configuration, config
  end
end
