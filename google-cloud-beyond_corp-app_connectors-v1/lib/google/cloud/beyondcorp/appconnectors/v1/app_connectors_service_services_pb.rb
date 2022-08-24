# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/beyondcorp/appconnectors/v1/app_connectors_service.proto for package 'Google.Cloud.BeyondCorp.AppConnectors.V1'
# Original file comments:
# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/beyondcorp/appconnectors/v1/app_connectors_service_pb'

module Google
  module Cloud
    module BeyondCorp
      module AppConnectors
        module V1
          module AppConnectorsService
            # ## API Overview
            #
            # The `beyondcorp.googleapis.com` service implements the Google Cloud
            # BeyondCorp API.
            #
            # ## Data Model
            #
            # The AppConnectorsService exposes the following resource:
            #
            # * AppConnectors, named as follows:
            #   `projects/{project_id}/locations/{location_id}/appConnectors/{app_connector_id}`.
            #
            # The AppConnectorsService provides methods to manage
            # (create/read/update/delete) BeyondCorp AppConnectors.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.beyondcorp.appconnectors.v1.AppConnectorsService'

              # Lists AppConnectors in a given project and location.
              rpc :ListAppConnectors, ::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsRequest, ::Google::Cloud::BeyondCorp::AppConnectors::V1::ListAppConnectorsResponse
              # Gets details of a single AppConnector.
              rpc :GetAppConnector, ::Google::Cloud::BeyondCorp::AppConnectors::V1::GetAppConnectorRequest, ::Google::Cloud::BeyondCorp::AppConnectors::V1::AppConnector
              # Creates a new AppConnector in a given project and location.
              rpc :CreateAppConnector, ::Google::Cloud::BeyondCorp::AppConnectors::V1::CreateAppConnectorRequest, ::Google::Longrunning::Operation
              # Updates the parameters of a single AppConnector.
              rpc :UpdateAppConnector, ::Google::Cloud::BeyondCorp::AppConnectors::V1::UpdateAppConnectorRequest, ::Google::Longrunning::Operation
              # Deletes a single AppConnector.
              rpc :DeleteAppConnector, ::Google::Cloud::BeyondCorp::AppConnectors::V1::DeleteAppConnectorRequest, ::Google::Longrunning::Operation
              # Report status for a given connector.
              rpc :ReportStatus, ::Google::Cloud::BeyondCorp::AppConnectors::V1::ReportStatusRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end