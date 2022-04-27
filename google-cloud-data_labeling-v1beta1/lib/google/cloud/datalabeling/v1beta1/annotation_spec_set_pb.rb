# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datalabeling/v1beta1/annotation_spec_set.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datalabeling/v1beta1/annotation_spec_set.proto", :syntax => :proto3) do
    add_message "google.cloud.datalabeling.v1beta1.AnnotationSpecSet" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :annotation_specs, :message, 4, "google.cloud.datalabeling.v1beta1.AnnotationSpec"
      repeated :blocking_resources, :string, 5
    end
    add_message "google.cloud.datalabeling.v1beta1.AnnotationSpec" do
      optional :display_name, :string, 1
      optional :description, :string, 2
    end
  end
end

module Google
  module Cloud
    module DataLabeling
      module V1beta1
        AnnotationSpecSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.AnnotationSpecSet").msgclass
        AnnotationSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datalabeling.v1beta1.AnnotationSpec").msgclass
      end
    end
  end
end
