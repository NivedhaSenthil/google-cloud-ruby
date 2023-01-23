# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dataplex/v1/datascans.proto for package 'google.cloud.dataplex.v1'
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
require 'google/cloud/dataplex/v1/datascans_pb'

module Google
  module Cloud
    module Dataplex
      module V1
        module DataScanService
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dataplex.v1.DataScanService'

            # Creates a dataScan resource.
            rpc :CreateDataScan, ::Google::Cloud::Dataplex::V1::CreateDataScanRequest, ::Google::Longrunning::Operation
            # Update the dataScan resource.
            rpc :UpdateDataScan, ::Google::Cloud::Dataplex::V1::UpdateDataScanRequest, ::Google::Longrunning::Operation
            # Delete the dataScan resource.
            rpc :DeleteDataScan, ::Google::Cloud::Dataplex::V1::DeleteDataScanRequest, ::Google::Longrunning::Operation
            # Get dataScan resource.
            rpc :GetDataScan, ::Google::Cloud::Dataplex::V1::GetDataScanRequest, ::Google::Cloud::Dataplex::V1::DataScan
            # Lists dataScans.
            rpc :ListDataScans, ::Google::Cloud::Dataplex::V1::ListDataScansRequest, ::Google::Cloud::Dataplex::V1::ListDataScansResponse
            # Run an on demand execution of a DataScan.
            rpc :RunDataScan, ::Google::Cloud::Dataplex::V1::RunDataScanRequest, ::Google::Cloud::Dataplex::V1::RunDataScanResponse
            # Get DataScanJob resource.
            rpc :GetDataScanJob, ::Google::Cloud::Dataplex::V1::GetDataScanJobRequest, ::Google::Cloud::Dataplex::V1::DataScanJob
            # Lists DataScanJobs under the given dataScan.
            rpc :ListDataScanJobs, ::Google::Cloud::Dataplex::V1::ListDataScanJobsRequest, ::Google::Cloud::Dataplex::V1::ListDataScanJobsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
