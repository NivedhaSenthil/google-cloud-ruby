# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/asset/v1/asset_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/asset/v1/assets_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/type/expr_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/asset/v1/asset_service.proto", :syntax => :proto3) do
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyLongrunningMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.asset.v1.ExportAssetsRequest" do
      optional :parent, :string, 1
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      repeated :asset_types, :string, 3
      optional :content_type, :enum, 4, "google.cloud.asset.v1.ContentType"
      optional :output_config, :message, 5, "google.cloud.asset.v1.OutputConfig"
      repeated :relationship_types, :string, 6
    end
    add_message "google.cloud.asset.v1.ExportAssetsResponse" do
      optional :read_time, :message, 1, "google.protobuf.Timestamp"
      optional :output_config, :message, 2, "google.cloud.asset.v1.OutputConfig"
      optional :output_result, :message, 3, "google.cloud.asset.v1.OutputResult"
    end
    add_message "google.cloud.asset.v1.ListAssetsRequest" do
      optional :parent, :string, 1
      optional :read_time, :message, 2, "google.protobuf.Timestamp"
      repeated :asset_types, :string, 3
      optional :content_type, :enum, 4, "google.cloud.asset.v1.ContentType"
      optional :page_size, :int32, 5
      optional :page_token, :string, 6
      repeated :relationship_types, :string, 7
    end
    add_message "google.cloud.asset.v1.ListAssetsResponse" do
      optional :read_time, :message, 1, "google.protobuf.Timestamp"
      repeated :assets, :message, 2, "google.cloud.asset.v1.Asset"
      optional :next_page_token, :string, 3
    end
    add_message "google.cloud.asset.v1.BatchGetAssetsHistoryRequest" do
      optional :parent, :string, 1
      repeated :asset_names, :string, 2
      optional :content_type, :enum, 3, "google.cloud.asset.v1.ContentType"
      optional :read_time_window, :message, 4, "google.cloud.asset.v1.TimeWindow"
      repeated :relationship_types, :string, 5
    end
    add_message "google.cloud.asset.v1.BatchGetAssetsHistoryResponse" do
      repeated :assets, :message, 1, "google.cloud.asset.v1.TemporalAsset"
    end
    add_message "google.cloud.asset.v1.CreateFeedRequest" do
      optional :parent, :string, 1
      optional :feed_id, :string, 2
      optional :feed, :message, 3, "google.cloud.asset.v1.Feed"
    end
    add_message "google.cloud.asset.v1.GetFeedRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.asset.v1.ListFeedsRequest" do
      optional :parent, :string, 1
    end
    add_message "google.cloud.asset.v1.ListFeedsResponse" do
      repeated :feeds, :message, 1, "google.cloud.asset.v1.Feed"
    end
    add_message "google.cloud.asset.v1.UpdateFeedRequest" do
      optional :feed, :message, 1, "google.cloud.asset.v1.Feed"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.asset.v1.DeleteFeedRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.asset.v1.OutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.asset.v1.GcsDestination"
        optional :bigquery_destination, :message, 2, "google.cloud.asset.v1.BigQueryDestination"
      end
    end
    add_message "google.cloud.asset.v1.OutputResult" do
      oneof :result do
        optional :gcs_result, :message, 1, "google.cloud.asset.v1.GcsOutputResult"
      end
    end
    add_message "google.cloud.asset.v1.GcsOutputResult" do
      repeated :uris, :string, 1
    end
    add_message "google.cloud.asset.v1.GcsDestination" do
      oneof :object_uri do
        optional :uri, :string, 1
        optional :uri_prefix, :string, 2
      end
    end
    add_message "google.cloud.asset.v1.BigQueryDestination" do
      optional :dataset, :string, 1
      optional :table, :string, 2
      optional :force, :bool, 3
      optional :partition_spec, :message, 4, "google.cloud.asset.v1.PartitionSpec"
      optional :separate_tables_per_asset_type, :bool, 5
    end
    add_message "google.cloud.asset.v1.PartitionSpec" do
      optional :partition_key, :enum, 1, "google.cloud.asset.v1.PartitionSpec.PartitionKey"
    end
    add_enum "google.cloud.asset.v1.PartitionSpec.PartitionKey" do
      value :PARTITION_KEY_UNSPECIFIED, 0
      value :READ_TIME, 1
      value :REQUEST_TIME, 2
    end
    add_message "google.cloud.asset.v1.PubsubDestination" do
      optional :topic, :string, 1
    end
    add_message "google.cloud.asset.v1.FeedOutputConfig" do
      oneof :destination do
        optional :pubsub_destination, :message, 1, "google.cloud.asset.v1.PubsubDestination"
      end
    end
    add_message "google.cloud.asset.v1.Feed" do
      optional :name, :string, 1
      repeated :asset_names, :string, 2
      repeated :asset_types, :string, 3
      optional :content_type, :enum, 4, "google.cloud.asset.v1.ContentType"
      optional :feed_output_config, :message, 5, "google.cloud.asset.v1.FeedOutputConfig"
      optional :condition, :message, 6, "google.type.Expr"
      repeated :relationship_types, :string, 7
    end
    add_message "google.cloud.asset.v1.SearchAllResourcesRequest" do
      optional :scope, :string, 1
      optional :query, :string, 2
      repeated :asset_types, :string, 3
      optional :page_size, :int32, 4
      optional :page_token, :string, 5
      optional :order_by, :string, 6
      optional :read_mask, :message, 8, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.asset.v1.SearchAllResourcesResponse" do
      repeated :results, :message, 1, "google.cloud.asset.v1.ResourceSearchResult"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.asset.v1.SearchAllIamPoliciesRequest" do
      optional :scope, :string, 1
      optional :query, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      repeated :asset_types, :string, 5
      optional :order_by, :string, 7
    end
    add_message "google.cloud.asset.v1.SearchAllIamPoliciesResponse" do
      repeated :results, :message, 1, "google.cloud.asset.v1.IamPolicySearchResult"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery" do
      optional :scope, :string, 1
      optional :resource_selector, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisQuery.ResourceSelector"
      optional :identity_selector, :message, 3, "google.cloud.asset.v1.IamPolicyAnalysisQuery.IdentitySelector"
      optional :access_selector, :message, 4, "google.cloud.asset.v1.IamPolicyAnalysisQuery.AccessSelector"
      optional :options, :message, 5, "google.cloud.asset.v1.IamPolicyAnalysisQuery.Options"
      optional :condition_context, :message, 6, "google.cloud.asset.v1.IamPolicyAnalysisQuery.ConditionContext"
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery.ResourceSelector" do
      optional :full_resource_name, :string, 1
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery.IdentitySelector" do
      optional :identity, :string, 1
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery.AccessSelector" do
      repeated :roles, :string, 1
      repeated :permissions, :string, 2
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery.Options" do
      optional :expand_groups, :bool, 1
      optional :expand_roles, :bool, 2
      optional :expand_resources, :bool, 3
      optional :output_resource_edges, :bool, 4
      optional :output_group_edges, :bool, 5
      optional :analyze_service_account_impersonation, :bool, 6
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisQuery.ConditionContext" do
      oneof :TimeContext do
        optional :access_time, :message, 1, "google.protobuf.Timestamp"
      end
    end
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyRequest" do
      optional :analysis_query, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisQuery"
      optional :execution_timeout, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyResponse" do
      optional :main_analysis, :message, 1, "google.cloud.asset.v1.AnalyzeIamPolicyResponse.IamPolicyAnalysis"
      repeated :service_account_impersonation_analysis, :message, 2, "google.cloud.asset.v1.AnalyzeIamPolicyResponse.IamPolicyAnalysis"
      optional :fully_explored, :bool, 3
    end
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyResponse.IamPolicyAnalysis" do
      optional :analysis_query, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisQuery"
      repeated :analysis_results, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisResult"
      optional :fully_explored, :bool, 3
      repeated :non_critical_errors, :message, 5, "google.cloud.asset.v1.IamPolicyAnalysisState"
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig" do
      oneof :destination do
        optional :gcs_destination, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.GcsDestination"
        optional :bigquery_destination, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination"
      end
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.GcsDestination" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination" do
      optional :dataset, :string, 1
      optional :table_prefix, :string, 2
      optional :partition_key, :enum, 3, "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey"
      optional :write_disposition, :string, 4
    end
    add_enum "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey" do
      value :PARTITION_KEY_UNSPECIFIED, 0
      value :REQUEST_TIME, 1
    end
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyLongrunningRequest" do
      optional :analysis_query, :message, 1, "google.cloud.asset.v1.IamPolicyAnalysisQuery"
      optional :output_config, :message, 2, "google.cloud.asset.v1.IamPolicyAnalysisOutputConfig"
    end
    add_message "google.cloud.asset.v1.AnalyzeIamPolicyLongrunningResponse" do
    end
    add_message "google.cloud.asset.v1.AnalyzeMoveRequest" do
      optional :resource, :string, 1
      optional :destination_parent, :string, 2
      optional :view, :enum, 3, "google.cloud.asset.v1.AnalyzeMoveRequest.AnalysisView"
    end
    add_enum "google.cloud.asset.v1.AnalyzeMoveRequest.AnalysisView" do
      value :ANALYSIS_VIEW_UNSPECIFIED, 0
      value :FULL, 1
      value :BASIC, 2
    end
    add_message "google.cloud.asset.v1.AnalyzeMoveResponse" do
      repeated :move_analysis, :message, 1, "google.cloud.asset.v1.MoveAnalysis"
    end
    add_message "google.cloud.asset.v1.MoveAnalysis" do
      optional :display_name, :string, 1
      oneof :result do
        optional :analysis, :message, 2, "google.cloud.asset.v1.MoveAnalysisResult"
        optional :error, :message, 3, "google.rpc.Status"
      end
    end
    add_message "google.cloud.asset.v1.MoveAnalysisResult" do
      repeated :blockers, :message, 1, "google.cloud.asset.v1.MoveImpact"
      repeated :warnings, :message, 2, "google.cloud.asset.v1.MoveImpact"
    end
    add_message "google.cloud.asset.v1.MoveImpact" do
      optional :detail, :string, 1
    end
    add_enum "google.cloud.asset.v1.ContentType" do
      value :CONTENT_TYPE_UNSPECIFIED, 0
      value :RESOURCE, 1
      value :IAM_POLICY, 2
      value :ORG_POLICY, 4
      value :ACCESS_POLICY, 5
      value :OS_INVENTORY, 6
      value :RELATIONSHIP, 7
    end
  end
end

module Google
  module Cloud
    module Asset
      module V1
        AnalyzeIamPolicyLongrunningMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyLongrunningMetadata").msgclass
        ExportAssetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ExportAssetsRequest").msgclass
        ExportAssetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ExportAssetsResponse").msgclass
        ListAssetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ListAssetsRequest").msgclass
        ListAssetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ListAssetsResponse").msgclass
        BatchGetAssetsHistoryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.BatchGetAssetsHistoryRequest").msgclass
        BatchGetAssetsHistoryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.BatchGetAssetsHistoryResponse").msgclass
        CreateFeedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.CreateFeedRequest").msgclass
        GetFeedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.GetFeedRequest").msgclass
        ListFeedsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ListFeedsRequest").msgclass
        ListFeedsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ListFeedsResponse").msgclass
        UpdateFeedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.UpdateFeedRequest").msgclass
        DeleteFeedRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.DeleteFeedRequest").msgclass
        OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.OutputConfig").msgclass
        OutputResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.OutputResult").msgclass
        GcsOutputResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.GcsOutputResult").msgclass
        GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.GcsDestination").msgclass
        BigQueryDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.BigQueryDestination").msgclass
        PartitionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.PartitionSpec").msgclass
        PartitionSpec::PartitionKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.PartitionSpec.PartitionKey").enummodule
        PubsubDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.PubsubDestination").msgclass
        FeedOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.FeedOutputConfig").msgclass
        Feed = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.Feed").msgclass
        SearchAllResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.SearchAllResourcesRequest").msgclass
        SearchAllResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.SearchAllResourcesResponse").msgclass
        SearchAllIamPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.SearchAllIamPoliciesRequest").msgclass
        SearchAllIamPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.SearchAllIamPoliciesResponse").msgclass
        IamPolicyAnalysisQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery").msgclass
        IamPolicyAnalysisQuery::ResourceSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery.ResourceSelector").msgclass
        IamPolicyAnalysisQuery::IdentitySelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery.IdentitySelector").msgclass
        IamPolicyAnalysisQuery::AccessSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery.AccessSelector").msgclass
        IamPolicyAnalysisQuery::Options = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery.Options").msgclass
        IamPolicyAnalysisQuery::ConditionContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisQuery.ConditionContext").msgclass
        AnalyzeIamPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyRequest").msgclass
        AnalyzeIamPolicyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyResponse").msgclass
        AnalyzeIamPolicyResponse::IamPolicyAnalysis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyResponse.IamPolicyAnalysis").msgclass
        IamPolicyAnalysisOutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisOutputConfig").msgclass
        IamPolicyAnalysisOutputConfig::GcsDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.GcsDestination").msgclass
        IamPolicyAnalysisOutputConfig::BigQueryDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination").msgclass
        IamPolicyAnalysisOutputConfig::BigQueryDestination::PartitionKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.IamPolicyAnalysisOutputConfig.BigQueryDestination.PartitionKey").enummodule
        AnalyzeIamPolicyLongrunningRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyLongrunningRequest").msgclass
        AnalyzeIamPolicyLongrunningResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeIamPolicyLongrunningResponse").msgclass
        AnalyzeMoveRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeMoveRequest").msgclass
        AnalyzeMoveRequest::AnalysisView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeMoveRequest.AnalysisView").enummodule
        AnalyzeMoveResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.AnalyzeMoveResponse").msgclass
        MoveAnalysis = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.MoveAnalysis").msgclass
        MoveAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.MoveAnalysisResult").msgclass
        MoveImpact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.MoveImpact").msgclass
        ContentType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.asset.v1.ContentType").enummodule
      end
    end
  end
end
