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


module Google
  module Cloud
    module Metastore
      module V1
        # Represents a federation of multiple backend metastores.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The relative resource name of the federation, of the
        #     form:
        #     projects/\\{project_number}/locations/\\{location_id}/federations/\\{federation_id}`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the metastore federation was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the metastore federation was last updated.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     User-defined labels for the metastore federation.
        # @!attribute [rw] version
        #   @return [::String]
        #     Immutable. The Apache Hive metastore version of the federation. All backend metastore
        #     versions must be compatible with the federation version.
        # @!attribute [rw] backend_metastores
        #   @return [::Google::Protobuf::Map{::Integer => ::Google::Cloud::Metastore::V1::BackendMetastore}]
        #     A map from `BackendMetastore` rank to `BackendMetastore`s from which the
        #     federation service serves metadata at query time. The map key represents
        #     the order in which `BackendMetastore`s should be evaluated to resolve
        #     database names at query time and should be greater than or equal to zero. A
        #     `BackendMetastore` with a lower number will be evaluated before a
        #     `BackendMetastore` with a higher number.
        # @!attribute [r] endpoint_uri
        #   @return [::String]
        #     Output only. The federation endpoint.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Metastore::V1::Federation::State]
        #     Output only. The current state of the federation.
        # @!attribute [r] state_message
        #   @return [::String]
        #     Output only. Additional information about the current state of the metastore federation,
        #     if available.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. The globally unique resource identifier of the metastore federation.
        class Federation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::Integer]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Metastore::V1::BackendMetastore]
          class BackendMetastoresEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The current state of the federation.
          module State
            # The state of the metastore federation is unknown.
            STATE_UNSPECIFIED = 0

            # The metastore federation is in the process of being created.
            CREATING = 1

            # The metastore federation is running and ready to serve queries.
            ACTIVE = 2

            # The metastore federation is being updated. It remains usable but cannot
            # accept additional update requests or be deleted at this time.
            UPDATING = 3

            # The metastore federation is undergoing deletion. It cannot be used.
            DELETING = 4

            # The metastore federation has encountered an error and cannot be used. The
            # metastore federation should be deleted.
            ERROR = 5
          end
        end

        # Represents a backend metastore for the federation.
        # @!attribute [rw] name
        #   @return [::String]
        #     The relative resource name of the metastore that is being federated.
        #     The formats of the relative resource names for the currently supported
        #     metastores are listed below:
        #
        #     * Dataplex
        #       * `projects/{project_id}/locations/{location}/lakes/{lake_id}`
        #     * BigQuery
        #       * `projects/{project_id}`
        #     * Dataproc Metastore
        #       * `projects/{project_id}/locations/{location}/services/{service_id}`
        # @!attribute [rw] metastore_type
        #   @return [::Google::Cloud::Metastore::V1::BackendMetastore::MetastoreType]
        #     The type of the backend metastore.
        class BackendMetastore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The type of the backend metastore.
          module MetastoreType
            # The metastore type is not set.
            METASTORE_TYPE_UNSPECIFIED = 0

            # The backend metastore is Dataproc Metastore.
            DATAPROC_METASTORE = 3
          end
        end

        # Request message for ListFederations.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The relative resource name of the location of metastore federations
        #     to list, in the following form:
        #     `projects/{project_number}/locations/{location_id}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of federations to return. The response may contain less
        #     than the maximum number. If unspecified, no more than 500 services are
        #     returned. The maximum value is 1000; values above 1000 are changed to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous ListFederationServices
        #     call. Provide this token to retrieve the subsequent page.
        #
        #     To retrieve the first page, supply an empty page token.
        #
        #     When paginating, other parameters provided to
        #     ListFederationServices must match the call that provided the
        #     page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to apply to list results.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specify the ordering of results as described in [Sorting
        #     Order](https://cloud.google.com/apis/design/design_patterns#sorting_order).
        #     If not specified, the results will be sorted in the default order.
        class ListFederationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for ListFederations
        # @!attribute [rw] federations
        #   @return [::Array<::Google::Cloud::Metastore::V1::Federation>]
        #     The services in the specified location.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page. If this
        #     field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListFederationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for GetFederation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The relative resource name of the metastore federation to retrieve,
        #     in the following form:
        #
        #     `projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
        class GetFederationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for CreateFederation.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The relative resource name of the location in which to create a federation
        #     service, in the following form:
        #
        #     `projects/{project_number}/locations/{location_id}`.
        # @!attribute [rw] federation_id
        #   @return [::String]
        #     Required. The ID of the metastore federation, which is used as the final
        #     component of the metastore federation's name.
        #
        #     This value must be between 2 and 63 characters long inclusive, begin with a
        #     letter, end with a letter or number, and consist of alpha-numeric
        #     ASCII characters or hyphens.
        # @!attribute [rw] federation
        #   @return [::Google::Cloud::Metastore::V1::Federation]
        #     Required. The Metastore Federation to create. The `name` field is
        #     ignored. The ID of the created metastore federation must be
        #     provided in the request's `federation_id` field.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID. Specify a unique request ID to allow the server to ignore the
        #     request if it has completed. The server will ignore subsequent requests
        #     that provide a duplicate request ID for at least 60 minutes after the first
        #     request.
        #
        #     For example, if an initial request times out, followed by another request
        #     with the same request ID, the server ignores the second request to prevent
        #     the creation of duplicate commitments.
        #
        #     The request ID must be a valid
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Format)
        #     A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        class CreateFederationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for UpdateFederation.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. A field mask used to specify the fields to be overwritten in the
        #     metastore federation resource by the update.
        #     Fields specified in the `update_mask` are relative to the resource (not
        #     to the full request). A field is overwritten if it is in the mask.
        # @!attribute [rw] federation
        #   @return [::Google::Cloud::Metastore::V1::Federation]
        #     Required. The metastore federation to update. The server only merges fields
        #     in the service if they are specified in `update_mask`.
        #
        #     The metastore federation's `name` field is used to identify the
        #     metastore service to be updated.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID. Specify a unique request ID to allow the server to ignore the
        #     request if it has completed. The server will ignore subsequent requests
        #     that provide a duplicate request ID for at least 60 minutes after the first
        #     request.
        #
        #     For example, if an initial request times out, followed by another request
        #     with the same request ID, the server ignores the second request to prevent
        #     the creation of duplicate commitments.
        #
        #     The request ID must be a valid
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Format)
        #     A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        class UpdateFederationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for DeleteFederation.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The relative resource name of the metastore federation to delete,
        #     in the following form:
        #
        #     `projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID. Specify a unique request ID to allow the server to ignore the
        #     request if it has completed. The server will ignore subsequent requests
        #     that provide a duplicate request ID for at least 60 minutes after the first
        #     request.
        #
        #     For example, if an initial request times out, followed by another request
        #     with the same request ID, the server ignores the second request to prevent
        #     the creation of duplicate commitments.
        #
        #     The request ID must be a valid
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Format)
        #     A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        class DeleteFederationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end