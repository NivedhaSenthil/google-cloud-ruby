# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1beta3/processor_type.proto

require 'google/protobuf'

require 'google/api/launch_stage_pb'
require 'google/api/resource_pb'


descriptor_data = "\n4google/cloud/documentai/v1beta3/processor_type.proto\x12\x1fgoogle.cloud.documentai.v1beta3\x1a\x1dgoogle/api/launch_stage.proto\x1a\x19google/api/resource.proto\"\x98\x03\n\rProcessorType\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0c\n\x04type\x18\x02 \x01(\t\x12\x10\n\x08\x63\x61tegory\x18\x03 \x01(\t\x12X\n\x13\x61vailable_locations\x18\x04 \x03(\x0b\x32;.google.cloud.documentai.v1beta3.ProcessorType.LocationInfo\x12\x16\n\x0e\x61llow_creation\x18\x06 \x01(\x08\x12-\n\x0claunch_stage\x18\x08 \x01(\x0e\x32\x17.google.api.LaunchStage\x12\x1c\n\x14sample_document_uris\x18\t \x03(\t\x1a#\n\x0cLocationInfo\x12\x13\n\x0blocation_id\x18\x01 \x01(\t:u\xea\x41r\n\'documentai.googleapis.com/ProcessorType\x12Gprojects/{project}/locations/{location}/processorTypes/{processor_type}B\xee\x01\n#com.google.cloud.documentai.v1beta3B\x17\x44ocumentAiProcessorTypeP\x01ZCcloud.google.com/go/documentai/apiv1beta3/documentaipb;documentaipb\xaa\x02\x1fGoogle.Cloud.DocumentAI.V1Beta3\xca\x02\x1fGoogle\\Cloud\\DocumentAI\\V1beta3\xea\x02\"Google::Cloud::DocumentAI::V1beta3b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        ProcessorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.ProcessorType").msgclass
        ProcessorType::LocationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.ProcessorType.LocationInfo").msgclass
      end
    end
  end
end
