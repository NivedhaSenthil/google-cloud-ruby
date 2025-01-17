# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/oslogin/v1/oslogin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/oslogin/common/common_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n%google/cloud/oslogin/v1/oslogin.proto\x12\x17google.cloud.oslogin.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a(google/cloud/oslogin/common/common.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\x98\x02\n\x0cLoginProfile\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x0eposix_accounts\x18\x02 \x03(\x0b\x32).google.cloud.oslogin.common.PosixAccount\x12Q\n\x0fssh_public_keys\x18\x03 \x03(\x0b\x32\x38.google.cloud.oslogin.v1.LoginProfile.SshPublicKeysEntry\x1a_\n\x12SshPublicKeysEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x38\n\x05value\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKey:\x02\x38\x01\"\xa0\x01\n\x19\x43reateSshPublicKeyRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x02\"V\n\x19\x44\x65letePosixAccountRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/PosixAccount\"V\n\x19\x44\x65leteSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\"z\n\x16GetLoginProfileRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#oslogin.googleapis.com/PosixAccount\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x11\n\tsystem_id\x18\x03 \x01(\t\"S\n\x16GetSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\"\xb4\x01\n\x19ImportSshPublicKeyRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x01\x12\x12\n\nproject_id\x18\x03 \x01(\t\"k\n\x1aImportSshPublicKeyResponse\x12<\n\rlogin_profile\x18\x01 \x01(\x0b\x32%.google.cloud.oslogin.v1.LoginProfile\x12\x0f\n\x07\x64\x65tails\x18\x02 \x01(\t\"\xcf\x01\n\x19UpdateSshPublicKeyRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#oslogin.googleapis.com/SshPublicKey\x12\x46\n\x0essh_public_key\x18\x02 \x01(\x0b\x32).google.cloud.oslogin.common.SshPublicKeyB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask2\x86\x0c\n\x0eOsLoginService\x12\xc7\x01\n\x12\x43reateSshPublicKey\x12\x32.google.cloud.oslogin.v1.CreateSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"R\x82\xd3\xe4\x93\x02\x34\"\"/v1/{parent=users/*}/sshPublicKeys:\x0essh_public_key\xda\x41\x15parent,ssh_public_key\x12\x8e\x01\n\x12\x44\x65letePosixAccount\x12\x32.google.cloud.oslogin.v1.DeletePosixAccountRequest\x1a\x16.google.protobuf.Empty\",\x82\xd3\xe4\x93\x02\x1f*\x1d/v1/{name=users/*/projects/*}\xda\x41\x04name\x12\x93\x01\n\x12\x44\x65leteSshPublicKey\x12\x32.google.cloud.oslogin.v1.DeleteSshPublicKeyRequest\x1a\x16.google.protobuf.Empty\"1\x82\xd3\xe4\x93\x02$*\"/v1/{name=users/*/sshPublicKeys/*}\xda\x41\x04name\x12\x99\x01\n\x0fGetLoginProfile\x12/.google.cloud.oslogin.v1.GetLoginProfileRequest\x1a%.google.cloud.oslogin.v1.LoginProfile\".\x82\xd3\xe4\x93\x02!\x12\x1f/v1/{name=users/*}/loginProfile\xda\x41\x04name\x12\xa0\x01\n\x0fGetSshPublicKey\x12/.google.cloud.oslogin.v1.GetSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"1\x82\xd3\xe4\x93\x02$\x12\"/v1/{name=users/*/sshPublicKeys/*}\xda\x41\x04name\x12\xf9\x01\n\x12ImportSshPublicKey\x12\x32.google.cloud.oslogin.v1.ImportSshPublicKeyRequest\x1a\x33.google.cloud.oslogin.v1.ImportSshPublicKeyResponse\"z\x82\xd3\xe4\x93\x02\x39\"\'/v1/{parent=users/*}:importSshPublicKey:\x0essh_public_key\xda\x41\x15parent,ssh_public_key\xda\x41 parent,ssh_public_key,project_id\x12\xe7\x01\n\x12UpdateSshPublicKey\x12\x32.google.cloud.oslogin.v1.UpdateSshPublicKeyRequest\x1a).google.cloud.oslogin.common.SshPublicKey\"r\x82\xd3\xe4\x93\x02\x34\x32\"/v1/{name=users/*/sshPublicKeys/*}:\x0essh_public_key\xda\x41\x13name,ssh_public_key\xda\x41\x1fname,ssh_public_key,update_mask\x1a\xdd\x01\xca\x41\x16oslogin.googleapis.com\xd2\x41\xc0\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-only,https://www.googleapis.com/auth/compute,https://www.googleapis.com/auth/compute.readonlyB\xb5\x01\n\x1b\x63om.google.cloud.oslogin.v1B\x0cOsLoginProtoP\x01Z5cloud.google.com/go/oslogin/apiv1/osloginpb;osloginpb\xaa\x02\x17Google.Cloud.OsLogin.V1\xca\x02\x17Google\\Cloud\\OsLogin\\V1\xea\x02\x1aGoogle::Cloud::OsLogin::V1b\x06proto3"

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
    ["google.cloud.oslogin.common.PosixAccount", "google/cloud/oslogin/common/common.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module OsLogin
      module V1
        LoginProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.LoginProfile").msgclass
        CreateSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.CreateSshPublicKeyRequest").msgclass
        DeletePosixAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.DeletePosixAccountRequest").msgclass
        DeleteSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.DeleteSshPublicKeyRequest").msgclass
        GetLoginProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.GetLoginProfileRequest").msgclass
        GetSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.GetSshPublicKeyRequest").msgclass
        ImportSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.ImportSshPublicKeyRequest").msgclass
        ImportSshPublicKeyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.ImportSshPublicKeyResponse").msgclass
        UpdateSshPublicKeyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.oslogin.v1.UpdateSshPublicKeyRequest").msgclass
      end
    end
  end
end
