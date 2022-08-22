# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/apikeys/v2/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/api/apikeys/v2/resources.proto", :syntax => :proto3) do
    add_message "google.api.apikeys.v2.Key" do
      optional :name, :string, 1
      optional :uid, :string, 5
      optional :display_name, :string, 2
      optional :key_string, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      optional :delete_time, :message, 7, "google.protobuf.Timestamp"
      map :annotations, :string, :string, 8
      optional :restrictions, :message, 9, "google.api.apikeys.v2.Restrictions"
      optional :etag, :string, 11
    end
    add_message "google.api.apikeys.v2.Restrictions" do
      repeated :api_targets, :message, 5, "google.api.apikeys.v2.ApiTarget"
      oneof :client_restrictions do
        optional :browser_key_restrictions, :message, 1, "google.api.apikeys.v2.BrowserKeyRestrictions"
        optional :server_key_restrictions, :message, 2, "google.api.apikeys.v2.ServerKeyRestrictions"
        optional :android_key_restrictions, :message, 3, "google.api.apikeys.v2.AndroidKeyRestrictions"
        optional :ios_key_restrictions, :message, 4, "google.api.apikeys.v2.IosKeyRestrictions"
      end
    end
    add_message "google.api.apikeys.v2.BrowserKeyRestrictions" do
      repeated :allowed_referrers, :string, 1
    end
    add_message "google.api.apikeys.v2.ServerKeyRestrictions" do
      repeated :allowed_ips, :string, 1
    end
    add_message "google.api.apikeys.v2.AndroidKeyRestrictions" do
      repeated :allowed_applications, :message, 1, "google.api.apikeys.v2.AndroidApplication"
    end
    add_message "google.api.apikeys.v2.AndroidApplication" do
      optional :sha1_fingerprint, :string, 1
      optional :package_name, :string, 2
    end
    add_message "google.api.apikeys.v2.IosKeyRestrictions" do
      repeated :allowed_bundle_ids, :string, 1
    end
    add_message "google.api.apikeys.v2.ApiTarget" do
      optional :service, :string, 1
      repeated :methods, :string, 2
    end
  end
end

module Google
  module Cloud
    module ApiKeys
      module V2
        Key = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.Key").msgclass
        Restrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.Restrictions").msgclass
        BrowserKeyRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.BrowserKeyRestrictions").msgclass
        ServerKeyRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.ServerKeyRestrictions").msgclass
        AndroidKeyRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.AndroidKeyRestrictions").msgclass
        AndroidApplication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.AndroidApplication").msgclass
        IosKeyRestrictions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.IosKeyRestrictions").msgclass
        ApiTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.apikeys.v2.ApiTarget").msgclass
      end
    end
  end
end
