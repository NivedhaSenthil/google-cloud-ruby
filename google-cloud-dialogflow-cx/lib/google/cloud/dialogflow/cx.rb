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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/dialogflow/cx/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dialogflow_cx do |config|
  config.add_field! :endpoint,      "dialogflow.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Dialogflow
      module CX
        ##
        # Create a new client object for Pages.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Pages::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Pages-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Pages service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Pages
        #
        # Service for managing Pages.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.pages version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Pages)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Flows.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Flows::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Flows-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Flows service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Flows
        #
        # Service for managing Flows.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.flows version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Flows)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Agents.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Agents::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Agents-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Agents service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Agents
        #
        # Service for managing Agents.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.agents version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Agents)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Changelogs.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Changelogs::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Changelogs-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Changelogs service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Changelogs
        #
        # Service for managing Changelogs.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.changelogs version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Changelogs)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Deployments.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Deployments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Deployments-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Deployments service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Deployments
        #
        # Service for managing Deployments.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.deployments version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Deployments)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for EntityTypes.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::EntityTypes::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-EntityTypes-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the EntityTypes service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About EntityTypes
        #
        # Service for managing EntityTypes.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.entity_types version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:EntityTypes)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Intents.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Intents::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Intents-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Intents service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Intents
        #
        # Service for managing Intents.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.intents version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Intents)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for SessionEntityTypes.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-SessionEntityTypes-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the SessionEntityTypes service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About SessionEntityTypes
        #
        # Service for managing
        # SessionEntityTypes.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.session_entity_types version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:SessionEntityTypes)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Sessions.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Sessions::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Sessions-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Sessions service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Sessions
        #
        # A session represents an interaction with a user. You retrieve user input
        # and pass it to the
        # DetectIntent method to
        # determine user intent and respond.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.sessions version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Sessions)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for TransitionRouteGroups.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::TransitionRouteGroups::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-TransitionRouteGroups-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the TransitionRouteGroups service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About TransitionRouteGroups
        #
        # Service for managing
        # TransitionRouteGroups.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.transition_route_groups version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:TransitionRouteGroups)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for TestCases.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::TestCases::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-TestCases-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the TestCases service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About TestCases
        #
        # Service for managing Test Cases and
        # Test Case Results.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.test_cases version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:TestCases)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Webhooks.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Webhooks::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Webhooks-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Webhooks service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Webhooks
        #
        # Service for managing Webhooks.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.webhooks version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Webhooks)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Environments.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Environments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Environments-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Environments service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Environments
        #
        # Service for managing
        # Environments.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.environments version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Environments)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Experiments.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Experiments::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Experiments-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Experiments service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Experiments
        #
        # Service for managing Experiments.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.experiments version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Experiments)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for SecuritySettingsService.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-SecuritySettingsService-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the SecuritySettingsService service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About SecuritySettingsService
        #
        # Service for managing security settings for Dialogflow.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.security_settings_service version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:SecuritySettingsService)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Create a new client object for Versions.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Dialogflow::CX::V3::Versions::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-dialogflow-cx-v3/latest/Google-Cloud-Dialogflow-CX-V3-Versions-Client)
        # for a gRPC client for version V3 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Versions service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        # You can also specify a different transport by passing `:rest` or `:grpc` in
        # the `transport` parameter.
        #
        # ## About Versions
        #
        # Service for managing Versions.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v3`.
        # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
        # @return [::Object] A client object for the specified version.
        #
        def self.versions version: :v3, transport: :grpc, &block
          require "google/cloud/dialogflow/cx/#{version.to_s.downcase}"

          package_name = Google::Cloud::Dialogflow::CX
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Dialogflow::CX.const_get(package_name).const_get(:Versions)
          service_module = service_module.const_get(:Rest) if transport == :rest
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Configure the google-cloud-dialogflow-cx library.
        #
        # The following configuration parameters are supported:
        #
        # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
        #   The path to the keyfile as a String, the contents of the keyfile as a
        #   Hash, or a Google::Auth::Credentials object.
        # * `lib_name` (*type:* `String`) -
        #   The library name as recorded in instrumentation and logging.
        # * `lib_version` (*type:* `String`) -
        #   The library version as recorded in instrumentation and logging.
        # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
        #   An array of interceptors that are run before calls are executed.
        # * `timeout` (*type:* `Numeric`) -
        #   Default timeout in seconds.
        # * `metadata` (*type:* `Hash{Symbol=>String}`) -
        #   Additional headers to be sent with the call.
        # * `retry_policy` (*type:* `Hash`) -
        #   The retry policy. The value is a hash with the following keys:
        #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
        #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
        #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
        #     * `:retry_codes` (*type:* `Array<String>`) -
        #       The error codes that should trigger a retry.
        #
        # @return [::Google::Cloud::Config] The default configuration used by this library
        #
        def self.configure
          yield ::Google::Cloud.configure.dialogflow_cx if block_given?

          ::Google::Cloud.configure.dialogflow_cx
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "cx", "helpers.rb"
require "google/cloud/dialogflow/cx/helpers" if ::File.file? helper_path
