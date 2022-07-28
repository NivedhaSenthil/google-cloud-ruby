# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataplex/v1/service.proto for package 'google.cloud.dataplex.v1'
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
require 'google/cloud/dataplex/v1/service_pb'

module Google
  module Cloud
    module Dataplex
      module V1
        module DataplexService
          # Dataplex service provides data lakes as a service. The primary resources
          # offered by this service are Lakes, Zones and Assets which collectively allow
          # a data administrator to organize, manage, secure and catalog data across
          # their organization located across cloud projects in a variety of storage
          # systems including Cloud Storage and BigQuery.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataplex.v1.DataplexService'

            # Creates a lake resource.
            rpc :CreateLake, ::Google::Cloud::Dataplex::V1::CreateLakeRequest, ::Google::Longrunning::Operation
            # Updates a lake resource.
            rpc :UpdateLake, ::Google::Cloud::Dataplex::V1::UpdateLakeRequest, ::Google::Longrunning::Operation
            # Deletes a lake resource. All zones within the lake must be deleted before
            # the lake can be deleted.
            rpc :DeleteLake, ::Google::Cloud::Dataplex::V1::DeleteLakeRequest, ::Google::Longrunning::Operation
            # Lists lake resources in a project and location.
            rpc :ListLakes, ::Google::Cloud::Dataplex::V1::ListLakesRequest, ::Google::Cloud::Dataplex::V1::ListLakesResponse
            # Retrieves a lake resource.
            rpc :GetLake, ::Google::Cloud::Dataplex::V1::GetLakeRequest, ::Google::Cloud::Dataplex::V1::Lake
            # Lists action resources in a lake.
            rpc :ListLakeActions, ::Google::Cloud::Dataplex::V1::ListLakeActionsRequest, ::Google::Cloud::Dataplex::V1::ListActionsResponse
            # Creates a zone resource within a lake.
            rpc :CreateZone, ::Google::Cloud::Dataplex::V1::CreateZoneRequest, ::Google::Longrunning::Operation
            # Updates a zone resource.
            rpc :UpdateZone, ::Google::Cloud::Dataplex::V1::UpdateZoneRequest, ::Google::Longrunning::Operation
            # Deletes a zone resource. All assets within a zone must be deleted before
            # the zone can be deleted.
            rpc :DeleteZone, ::Google::Cloud::Dataplex::V1::DeleteZoneRequest, ::Google::Longrunning::Operation
            # Lists zone resources in a lake.
            rpc :ListZones, ::Google::Cloud::Dataplex::V1::ListZonesRequest, ::Google::Cloud::Dataplex::V1::ListZonesResponse
            # Retrieves a zone resource.
            rpc :GetZone, ::Google::Cloud::Dataplex::V1::GetZoneRequest, ::Google::Cloud::Dataplex::V1::Zone
            # Lists action resources in a zone.
            rpc :ListZoneActions, ::Google::Cloud::Dataplex::V1::ListZoneActionsRequest, ::Google::Cloud::Dataplex::V1::ListActionsResponse
            # Creates an asset resource.
            rpc :CreateAsset, ::Google::Cloud::Dataplex::V1::CreateAssetRequest, ::Google::Longrunning::Operation
            # Updates an asset resource.
            rpc :UpdateAsset, ::Google::Cloud::Dataplex::V1::UpdateAssetRequest, ::Google::Longrunning::Operation
            # Deletes an asset resource. The referenced storage resource is detached
            # (default) or deleted based on the associated Lifecycle policy.
            rpc :DeleteAsset, ::Google::Cloud::Dataplex::V1::DeleteAssetRequest, ::Google::Longrunning::Operation
            # Lists asset resources in a zone.
            rpc :ListAssets, ::Google::Cloud::Dataplex::V1::ListAssetsRequest, ::Google::Cloud::Dataplex::V1::ListAssetsResponse
            # Retrieves an asset resource.
            rpc :GetAsset, ::Google::Cloud::Dataplex::V1::GetAssetRequest, ::Google::Cloud::Dataplex::V1::Asset
            # Lists action resources in an asset.
            rpc :ListAssetActions, ::Google::Cloud::Dataplex::V1::ListAssetActionsRequest, ::Google::Cloud::Dataplex::V1::ListActionsResponse
            # Creates a task resource within a lake.
            rpc :CreateTask, ::Google::Cloud::Dataplex::V1::CreateTaskRequest, ::Google::Longrunning::Operation
            # Update the task resource.
            rpc :UpdateTask, ::Google::Cloud::Dataplex::V1::UpdateTaskRequest, ::Google::Longrunning::Operation
            # Delete the task resource.
            rpc :DeleteTask, ::Google::Cloud::Dataplex::V1::DeleteTaskRequest, ::Google::Longrunning::Operation
            # Lists tasks under the given lake.
            rpc :ListTasks, ::Google::Cloud::Dataplex::V1::ListTasksRequest, ::Google::Cloud::Dataplex::V1::ListTasksResponse
            # Get task resource.
            rpc :GetTask, ::Google::Cloud::Dataplex::V1::GetTaskRequest, ::Google::Cloud::Dataplex::V1::Task
            # Lists Jobs under the given task.
            rpc :ListJobs, ::Google::Cloud::Dataplex::V1::ListJobsRequest, ::Google::Cloud::Dataplex::V1::ListJobsResponse
            # Get job resource.
            rpc :GetJob, ::Google::Cloud::Dataplex::V1::GetJobRequest, ::Google::Cloud::Dataplex::V1::Job
            # Cancel jobs running for the task resource.
            rpc :CancelJob, ::Google::Cloud::Dataplex::V1::CancelJobRequest, ::Google::Protobuf::Empty
            # Create an environment resource.
            rpc :CreateEnvironment, ::Google::Cloud::Dataplex::V1::CreateEnvironmentRequest, ::Google::Longrunning::Operation
            # Update the environment resource.
            rpc :UpdateEnvironment, ::Google::Cloud::Dataplex::V1::UpdateEnvironmentRequest, ::Google::Longrunning::Operation
            # Delete the environment resource. All the child resources must have been
            # deleted before environment deletion can be initiated.
            rpc :DeleteEnvironment, ::Google::Cloud::Dataplex::V1::DeleteEnvironmentRequest, ::Google::Longrunning::Operation
            # Lists environments under the given lake.
            rpc :ListEnvironments, ::Google::Cloud::Dataplex::V1::ListEnvironmentsRequest, ::Google::Cloud::Dataplex::V1::ListEnvironmentsResponse
            # Get environment resource.
            rpc :GetEnvironment, ::Google::Cloud::Dataplex::V1::GetEnvironmentRequest, ::Google::Cloud::Dataplex::V1::Environment
            # Lists session resources in an environment.
            rpc :ListSessions, ::Google::Cloud::Dataplex::V1::ListSessionsRequest, ::Google::Cloud::Dataplex::V1::ListSessionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
