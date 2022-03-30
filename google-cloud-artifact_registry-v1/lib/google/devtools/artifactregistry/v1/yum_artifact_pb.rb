# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1/yum_artifact.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/devtools/artifactregistry/v1/yum_artifact.proto", :syntax => :proto3) do
    add_message "google.devtools.artifactregistry.v1.YumArtifact" do
      optional :name, :string, 1
      optional :package_name, :string, 2
      optional :package_type, :enum, 3, "google.devtools.artifactregistry.v1.YumArtifact.PackageType"
      optional :architecture, :string, 4
    end
    add_enum "google.devtools.artifactregistry.v1.YumArtifact.PackageType" do
      value :PACKAGE_TYPE_UNSPECIFIED, 0
      value :BINARY, 1
      value :SOURCE, 2
    end
    add_message "google.devtools.artifactregistry.v1.ImportYumArtifactsGcsSource" do
      repeated :uris, :string, 1
      optional :use_wildcards, :bool, 2
    end
    add_message "google.devtools.artifactregistry.v1.ImportYumArtifactsRequest" do
      optional :parent, :string, 1
      oneof :source do
        optional :gcs_source, :message, 2, "google.devtools.artifactregistry.v1.ImportYumArtifactsGcsSource"
      end
    end
    add_message "google.devtools.artifactregistry.v1.ImportYumArtifactsErrorInfo" do
      optional :error, :message, 2, "google.rpc.Status"
      oneof :source do
        optional :gcs_source, :message, 1, "google.devtools.artifactregistry.v1.ImportYumArtifactsGcsSource"
      end
    end
    add_message "google.devtools.artifactregistry.v1.ImportYumArtifactsResponse" do
      repeated :yum_artifacts, :message, 1, "google.devtools.artifactregistry.v1.YumArtifact"
      repeated :errors, :message, 2, "google.devtools.artifactregistry.v1.ImportYumArtifactsErrorInfo"
    end
    add_message "google.devtools.artifactregistry.v1.ImportYumArtifactsMetadata" do
    end
  end
end

module Google
  module Cloud
    module ArtifactRegistry
      module V1
        YumArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.YumArtifact").msgclass
        YumArtifact::PackageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.YumArtifact.PackageType").enummodule
        ImportYumArtifactsGcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ImportYumArtifactsGcsSource").msgclass
        ImportYumArtifactsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ImportYumArtifactsRequest").msgclass
        ImportYumArtifactsErrorInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ImportYumArtifactsErrorInfo").msgclass
        ImportYumArtifactsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ImportYumArtifactsResponse").msgclass
        ImportYumArtifactsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1.ImportYumArtifactsMetadata").msgclass
      end
    end
  end
end