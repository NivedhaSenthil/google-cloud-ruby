# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataproc/v1beta2/clusters.proto for package 'google.cloud.dataproc.v1beta2'
# Original file comments:
# Copyright 2020 Google LLC
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
require 'google/cloud/dataproc/v1beta2/clusters_pb'

module Google
  module Cloud
    module Dataproc
      module V1beta2
        module ClusterController
          # The ClusterControllerService provides methods to manage clusters
          # of Compute Engine instances.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataproc.v1beta2.ClusterController'

            # Creates a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # ClusterOperationMetadata.
            rpc :CreateCluster, ::Google::Cloud::Dataproc::V1beta2::CreateClusterRequest, ::Google::Longrunning::Operation
            # Updates a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # ClusterOperationMetadata.
            rpc :UpdateCluster, ::Google::Cloud::Dataproc::V1beta2::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Deletes a cluster in a project. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # ClusterOperationMetadata.
            rpc :DeleteCluster, ::Google::Cloud::Dataproc::V1beta2::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Gets the resource representation for a cluster in a project.
            rpc :GetCluster, ::Google::Cloud::Dataproc::V1beta2::GetClusterRequest, ::Google::Cloud::Dataproc::V1beta2::Cluster
            # Lists all regions/{region}/clusters in a project alphabetically.
            rpc :ListClusters, ::Google::Cloud::Dataproc::V1beta2::ListClustersRequest, ::Google::Cloud::Dataproc::V1beta2::ListClustersResponse
            # Gets cluster diagnostic information. The returned
            # [Operation.metadata][google.longrunning.Operation.metadata] will be
            # ClusterOperationMetadata.
            # After the operation completes,
            # [Operation.response][google.longrunning.Operation.response]
            # contains
            # [Empty][google.protobuf.Empty].
            rpc :DiagnoseCluster, ::Google::Cloud::Dataproc::V1beta2::DiagnoseClusterRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end