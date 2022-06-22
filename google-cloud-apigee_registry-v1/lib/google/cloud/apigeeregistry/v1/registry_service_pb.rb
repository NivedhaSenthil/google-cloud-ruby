# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apigeeregistry/v1/registry_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/apigeeregistry/v1/registry_models_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/apigeeregistry/v1/registry_service.proto", :syntax => :proto3) do
    add_message "google.cloud.apigeeregistry.v1.ListApisRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.apigeeregistry.v1.ListApisResponse" do
      repeated :apis, :message, 1, "google.cloud.apigeeregistry.v1.Api"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.GetApiRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.CreateApiRequest" do
      optional :parent, :string, 1
      optional :api, :message, 2, "google.cloud.apigeeregistry.v1.Api"
      optional :api_id, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.UpdateApiRequest" do
      optional :api, :message, 1, "google.cloud.apigeeregistry.v1.Api"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiVersionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiVersionsResponse" do
      repeated :api_versions, :message, 1, "google.cloud.apigeeregistry.v1.ApiVersion"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.GetApiVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.CreateApiVersionRequest" do
      optional :parent, :string, 1
      optional :api_version, :message, 2, "google.cloud.apigeeregistry.v1.ApiVersion"
      optional :api_version_id, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.UpdateApiVersionRequest" do
      optional :api_version, :message, 1, "google.cloud.apigeeregistry.v1.ApiVersion"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiVersionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiSpecsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiSpecsResponse" do
      repeated :api_specs, :message, 1, "google.cloud.apigeeregistry.v1.ApiSpec"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.GetApiSpecRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.GetApiSpecContentsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.CreateApiSpecRequest" do
      optional :parent, :string, 1
      optional :api_spec, :message, 2, "google.cloud.apigeeregistry.v1.ApiSpec"
      optional :api_spec_id, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.UpdateApiSpecRequest" do
      optional :api_spec, :message, 1, "google.cloud.apigeeregistry.v1.ApiSpec"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiSpecRequest" do
      optional :name, :string, 1
      optional :force, :bool, 2
    end
    add_message "google.cloud.apigeeregistry.v1.TagApiSpecRevisionRequest" do
      optional :name, :string, 1
      optional :tag, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiSpecRevisionsRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiSpecRevisionsResponse" do
      repeated :api_specs, :message, 1, "google.cloud.apigeeregistry.v1.ApiSpec"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.RollbackApiSpecRequest" do
      optional :name, :string, 1
      optional :revision_id, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiSpecRevisionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiDeploymentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiDeploymentsResponse" do
      repeated :api_deployments, :message, 1, "google.cloud.apigeeregistry.v1.ApiDeployment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.GetApiDeploymentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.CreateApiDeploymentRequest" do
      optional :parent, :string, 1
      optional :api_deployment, :message, 2, "google.cloud.apigeeregistry.v1.ApiDeployment"
      optional :api_deployment_id, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.UpdateApiDeploymentRequest" do
      optional :api_deployment, :message, 1, "google.cloud.apigeeregistry.v1.ApiDeployment"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiDeploymentRequest" do
      optional :name, :string, 1
      optional :force, :bool, 2
    end
    add_message "google.cloud.apigeeregistry.v1.TagApiDeploymentRevisionRequest" do
      optional :name, :string, 1
      optional :tag, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiDeploymentRevisionsRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.ListApiDeploymentRevisionsResponse" do
      repeated :api_deployments, :message, 1, "google.cloud.apigeeregistry.v1.ApiDeployment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.RollbackApiDeploymentRequest" do
      optional :name, :string, 1
      optional :revision_id, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteApiDeploymentRevisionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.ListArtifactsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.apigeeregistry.v1.ListArtifactsResponse" do
      repeated :artifacts, :message, 1, "google.cloud.apigeeregistry.v1.Artifact"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.apigeeregistry.v1.GetArtifactRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.GetArtifactContentsRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.apigeeregistry.v1.CreateArtifactRequest" do
      optional :parent, :string, 1
      optional :artifact, :message, 2, "google.cloud.apigeeregistry.v1.Artifact"
      optional :artifact_id, :string, 3
    end
    add_message "google.cloud.apigeeregistry.v1.ReplaceArtifactRequest" do
      optional :artifact, :message, 1, "google.cloud.apigeeregistry.v1.Artifact"
    end
    add_message "google.cloud.apigeeregistry.v1.DeleteArtifactRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module ApigeeRegistry
      module V1
        ListApisRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApisRequest").msgclass
        ListApisResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApisResponse").msgclass
        GetApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetApiRequest").msgclass
        CreateApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.CreateApiRequest").msgclass
        UpdateApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.UpdateApiRequest").msgclass
        DeleteApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiRequest").msgclass
        ListApiVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiVersionsRequest").msgclass
        ListApiVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiVersionsResponse").msgclass
        GetApiVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetApiVersionRequest").msgclass
        CreateApiVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.CreateApiVersionRequest").msgclass
        UpdateApiVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.UpdateApiVersionRequest").msgclass
        DeleteApiVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiVersionRequest").msgclass
        ListApiSpecsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiSpecsRequest").msgclass
        ListApiSpecsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiSpecsResponse").msgclass
        GetApiSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetApiSpecRequest").msgclass
        GetApiSpecContentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetApiSpecContentsRequest").msgclass
        CreateApiSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.CreateApiSpecRequest").msgclass
        UpdateApiSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.UpdateApiSpecRequest").msgclass
        DeleteApiSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiSpecRequest").msgclass
        TagApiSpecRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.TagApiSpecRevisionRequest").msgclass
        ListApiSpecRevisionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiSpecRevisionsRequest").msgclass
        ListApiSpecRevisionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiSpecRevisionsResponse").msgclass
        RollbackApiSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.RollbackApiSpecRequest").msgclass
        DeleteApiSpecRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiSpecRevisionRequest").msgclass
        ListApiDeploymentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiDeploymentsRequest").msgclass
        ListApiDeploymentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiDeploymentsResponse").msgclass
        GetApiDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetApiDeploymentRequest").msgclass
        CreateApiDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.CreateApiDeploymentRequest").msgclass
        UpdateApiDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.UpdateApiDeploymentRequest").msgclass
        DeleteApiDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiDeploymentRequest").msgclass
        TagApiDeploymentRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.TagApiDeploymentRevisionRequest").msgclass
        ListApiDeploymentRevisionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiDeploymentRevisionsRequest").msgclass
        ListApiDeploymentRevisionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListApiDeploymentRevisionsResponse").msgclass
        RollbackApiDeploymentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.RollbackApiDeploymentRequest").msgclass
        DeleteApiDeploymentRevisionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteApiDeploymentRevisionRequest").msgclass
        ListArtifactsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListArtifactsRequest").msgclass
        ListArtifactsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ListArtifactsResponse").msgclass
        GetArtifactRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetArtifactRequest").msgclass
        GetArtifactContentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.GetArtifactContentsRequest").msgclass
        CreateArtifactRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.CreateArtifactRequest").msgclass
        ReplaceArtifactRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.ReplaceArtifactRequest").msgclass
        DeleteArtifactRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigeeregistry.v1.DeleteArtifactRequest").msgclass
      end
    end
  end
end
