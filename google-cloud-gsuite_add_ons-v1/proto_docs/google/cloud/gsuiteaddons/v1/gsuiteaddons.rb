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


module Google
  module Cloud
    module GSuiteAddOns
      module V1
        # Request message to get Google Workspace Add-ons authorization information.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the project for which to get the Google Workspace Add-ons
        #     authorization information.
        #
        #     Example: `projects/my_project/authorization`.
        class GetAuthorizationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The authorization information used when invoking deployment endpoints.
        # @!attribute [rw] name
        #   @return [::String]
        #     The canonical full name of this resource.
        #     Example:  `projects/123/authorization`
        # @!attribute [rw] service_account_email
        #   @return [::String]
        #     The email address of the service account used to authenticate requests to
        #     add-on callback endpoints.
        # @!attribute [rw] oauth_client_id
        #   @return [::String]
        #     The OAuth client ID used to obtain OAuth access tokens for a user on the
        #     add-on's behalf.
        class Authorization
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to create a deployment.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the project in which to create the deployment.
        #
        #     Example: `projects/my_project`.
        # @!attribute [rw] deployment_id
        #   @return [::String]
        #     Required. The id to use for this deployment.  The full name of the created
        #     resource will be `projects/<project_number>/deployments/<deployment_id>`.
        # @!attribute [rw] deployment
        #   @return [::Google::Cloud::GSuiteAddOns::V1::Deployment]
        #     Required. The deployment to create (deployment.name cannot be set).
        class CreateDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to create or replace a deployment.
        # @!attribute [rw] deployment
        #   @return [::Google::Cloud::GSuiteAddOns::V1::Deployment]
        #     Required. The deployment to create or replace.
        class ReplaceDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to get a deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the deployment to get.
        #
        #     Example:  `projects/my_project/deployments/my_deployment`.
        class GetDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to list deployments for a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the project in which to create the deployment.
        #
        #     Example: `projects/my_project`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of deployments to return. The service may return fewer
        #     than this value.
        #     If unspecified, at most 1000 deployments will be returned.
        #     The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListDeployments` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListDeployments` must
        #     match the call that provided the page token.
        class ListDeploymentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message to list deployments.
        # @!attribute [rw] deployments
        #   @return [::Array<::Google::Cloud::GSuiteAddOns::V1::Deployment>]
        #     The list of deployments for the given project.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListDeploymentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to delete a deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the deployment to delete.
        #
        #     Example:  `projects/my_project/deployments/my_deployment`.
        # @!attribute [rw] etag
        #   @return [::String]
        #     The etag of the deployment to delete.
        #     If this is provided, it must match the server's etag.
        class DeleteDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to install a developer mode deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the deployment to install.
        #
        #     Example:  `projects/my_project/deployments/my_deployment`.
        class InstallDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to uninstall a developer mode deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the deployment to install.
        #
        #     Example:  `projects/my_project/deployments/my_deployment`.
        class UninstallDeploymentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to get the install status of a developer mode deployment.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full resource name of the deployment.
        #
        #     Example:  `projects/my_project/deployments/my_deployment/installStatus`.
        class GetInstallStatusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Developer mode install status of a deployment
        # @!attribute [rw] name
        #   @return [::String]
        #     The canonical full resource name of the deployment install status.
        #
        #     Example:  `projects/123/deployments/my_deployment/installStatus`.
        # @!attribute [rw] installed
        #   @return [::Google::Protobuf::BoolValue]
        #     True if the deployment is installed for the user
        class InstallStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Google Workspace Add-on deployment
        # @!attribute [rw] name
        #   @return [::String]
        #     The deployment resource name.
        #     Example:  projects/123/deployments/my_deployment.
        # @!attribute [rw] oauth_scopes
        #   @return [::Array<::String>]
        #     The list of Google OAuth scopes for which to request consent from the end
        #     user before executing an add-on endpoint.
        # @!attribute [rw] add_ons
        #   @return [::Google::Cloud::GSuiteAddOns::V1::AddOns]
        #     The Google Workspace Add-on configuration.
        # @!attribute [rw] etag
        #   @return [::String]
        #     This value is computed by the server based on the version of the
        #     deployment in storage, and may be sent on update and delete requests to
        #     ensure the client has an up-to-date value before proceeding.
        class Deployment
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Google Workspace Add-on configuration.
        # @!attribute [rw] common
        #   @return [::Google::Apps::Script::Type::CommonAddOnManifest]
        #     Configuration that is common across all Google Workspace Add-ons.
        # @!attribute [rw] gmail
        #   @return [::Google::Apps::Script::Type::Gmail::GmailAddOnManifest]
        #     Gmail add-on configuration.
        # @!attribute [rw] drive
        #   @return [::Google::Apps::Script::Type::Drive::DriveAddOnManifest]
        #     Drive add-on configuration.
        # @!attribute [rw] calendar
        #   @return [::Google::Apps::Script::Type::Calendar::CalendarAddOnManifest]
        #     Calendar add-on configuration.
        # @!attribute [rw] docs
        #   @return [::Google::Apps::Script::Type::Docs::DocsAddOnManifest]
        #     Docs add-on configuration.
        # @!attribute [rw] sheets
        #   @return [::Google::Apps::Script::Type::Sheets::SheetsAddOnManifest]
        #     Sheets add-on configuration.
        # @!attribute [rw] slides
        #   @return [::Google::Apps::Script::Type::Slides::SlidesAddOnManifest]
        #     Slides add-on configuration.
        # @!attribute [rw] http_options
        #   @return [::Google::Apps::Script::Type::HttpOptions]
        #     Options for sending requests to add-on HTTP endpoints
        class AddOns
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
