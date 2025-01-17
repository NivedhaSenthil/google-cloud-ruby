# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/events.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n+google/cloud/video/stitcher/v1/events.proto\x12\x1egoogle.cloud.video.stitcher.v1\x1a\x1egoogle/protobuf/duration.proto\"\x8e\x04\n\x05\x45vent\x12=\n\x04type\x18\x01 \x01(\x0e\x32/.google.cloud.video.stitcher.v1.Event.EventType\x12\x0b\n\x03uri\x18\x02 \x01(\t\x12\n\n\x02id\x18\x03 \x01(\t\x12)\n\x06offset\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\"\x81\x03\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\x11\n\rCREATIVE_VIEW\x10\x01\x12\t\n\x05START\x10\x02\x12\x0f\n\x0b\x42REAK_START\x10\x03\x12\r\n\tBREAK_END\x10\x04\x12\x0e\n\nIMPRESSION\x10\x05\x12\x12\n\x0e\x46IRST_QUARTILE\x10\x06\x12\x0c\n\x08MIDPOINT\x10\x07\x12\x12\n\x0eTHIRD_QUARTILE\x10\x08\x12\x0c\n\x08\x43OMPLETE\x10\t\x12\x0c\n\x08PROGRESS\x10\n\x12\x08\n\x04MUTE\x10\x0b\x12\n\n\x06UNMUTE\x10\x0c\x12\t\n\x05PAUSE\x10\r\x12\t\n\x05\x43LICK\x10\x0e\x12\x11\n\rCLICK_THROUGH\x10\x0f\x12\n\n\x06REWIND\x10\x10\x12\n\n\x06RESUME\x10\x11\x12\t\n\x05\x45RROR\x10\x12\x12\n\n\x06\x45XPAND\x10\x15\x12\x0c\n\x08\x43OLLAPSE\x10\x16\x12\t\n\x05\x43LOSE\x10\x18\x12\x10\n\x0c\x43LOSE_LINEAR\x10\x19\x12\x08\n\x04SKIP\x10\x1a\x12\x15\n\x11\x41\x43\x43\x45PT_INVITATION\x10\x1b\"v\n\rProgressEvent\x12.\n\x0btime_offset\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x35\n\x06\x65vents\x18\x02 \x03(\x0b\x32%.google.cloud.video.stitcher.v1.EventBs\n\"com.google.cloud.video.stitcher.v1B\x0b\x45ventsProtoP\x01Z>cloud.google.com/go/video/stitcher/apiv1/stitcherpb;stitcherpbb\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Video
      module Stitcher
        module V1
          Event = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.Event").msgclass
          Event::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.Event.EventType").enummodule
          ProgressEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.ProgressEvent").msgclass
        end
      end
    end
  end
end
