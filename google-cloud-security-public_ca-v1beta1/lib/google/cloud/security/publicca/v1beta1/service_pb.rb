# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/security/publicca/v1beta1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/security/publicca/v1beta1/resources_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/security/publicca/v1beta1/service.proto", :syntax => :proto3) do
    add_message "google.cloud.security.publicca.v1beta1.CreateExternalAccountKeyRequest" do
      optional :parent, :string, 1
      optional :external_account_key, :message, 2, "google.cloud.security.publicca.v1beta1.ExternalAccountKey"
    end
  end
end

module Google
  module Cloud
    module Security
      module PublicCA
        module V1beta1
          CreateExternalAccountKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.publicca.v1beta1.CreateExternalAccountKeyRequest").msgclass
        end
      end
    end
  end
end