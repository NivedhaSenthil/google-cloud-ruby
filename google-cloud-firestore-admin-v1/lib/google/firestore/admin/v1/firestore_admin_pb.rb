# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/firestore_admin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/firestore/admin/v1/database_pb'
require 'google/firestore/admin/v1/field_pb'
require 'google/firestore/admin/v1/index_pb'
require 'google/firestore/admin/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/firestore/admin/v1/firestore_admin.proto", :syntax => :proto3) do
    add_message "google.firestore.admin.v1.ListDatabasesRequest" do
      optional :parent, :string, 1
    end
    add_message "google.firestore.admin.v1.ListDatabasesResponse" do
      repeated :databases, :message, 1, "google.firestore.admin.v1.Database"
    end
    add_message "google.firestore.admin.v1.GetDatabaseRequest" do
      optional :name, :string, 1
    end
    add_message "google.firestore.admin.v1.UpdateDatabaseRequest" do
      optional :database, :message, 1, "google.firestore.admin.v1.Database"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.firestore.admin.v1.UpdateDatabaseMetadata" do
    end
    add_message "google.firestore.admin.v1.CreateIndexRequest" do
      optional :parent, :string, 1
      optional :index, :message, 2, "google.firestore.admin.v1.Index"
    end
    add_message "google.firestore.admin.v1.ListIndexesRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.firestore.admin.v1.ListIndexesResponse" do
      repeated :indexes, :message, 1, "google.firestore.admin.v1.Index"
      optional :next_page_token, :string, 2
    end
    add_message "google.firestore.admin.v1.GetIndexRequest" do
      optional :name, :string, 1
    end
    add_message "google.firestore.admin.v1.DeleteIndexRequest" do
      optional :name, :string, 1
    end
    add_message "google.firestore.admin.v1.UpdateFieldRequest" do
      optional :field, :message, 1, "google.firestore.admin.v1.Field"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.firestore.admin.v1.GetFieldRequest" do
      optional :name, :string, 1
    end
    add_message "google.firestore.admin.v1.ListFieldsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.firestore.admin.v1.ListFieldsResponse" do
      repeated :fields, :message, 1, "google.firestore.admin.v1.Field"
      optional :next_page_token, :string, 2
    end
    add_message "google.firestore.admin.v1.ExportDocumentsRequest" do
      optional :name, :string, 1
      repeated :collection_ids, :string, 2
      optional :output_uri_prefix, :string, 3
    end
    add_message "google.firestore.admin.v1.ImportDocumentsRequest" do
      optional :name, :string, 1
      repeated :collection_ids, :string, 2
      optional :input_uri_prefix, :string, 3
    end
  end
end

module Google
  module Cloud
    module Firestore
      module Admin
        module V1
          ListDatabasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListDatabasesRequest").msgclass
          ListDatabasesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListDatabasesResponse").msgclass
          GetDatabaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetDatabaseRequest").msgclass
          UpdateDatabaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateDatabaseRequest").msgclass
          UpdateDatabaseMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateDatabaseMetadata").msgclass
          CreateIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.CreateIndexRequest").msgclass
          ListIndexesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListIndexesRequest").msgclass
          ListIndexesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListIndexesResponse").msgclass
          GetIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetIndexRequest").msgclass
          DeleteIndexRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.DeleteIndexRequest").msgclass
          UpdateFieldRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.UpdateFieldRequest").msgclass
          GetFieldRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.GetFieldRequest").msgclass
          ListFieldsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListFieldsRequest").msgclass
          ListFieldsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ListFieldsResponse").msgclass
          ExportDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ExportDocumentsRequest").msgclass
          ImportDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.ImportDocumentsRequest").msgclass
        end
      end
    end
  end
end
