# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/metastore/v1/metastore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/dayofweek_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/metastore/v1/metastore.proto", :syntax => :proto3) do
    add_message "google.cloud.metastore.v1.Service" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :network, :string, 7
      optional :endpoint_uri, :string, 8
      optional :port, :int32, 9
      optional :state, :enum, 10, "google.cloud.metastore.v1.Service.State"
      optional :state_message, :string, 11
      optional :artifact_gcs_uri, :string, 12
      optional :tier, :enum, 13, "google.cloud.metastore.v1.Service.Tier"
      optional :maintenance_window, :message, 15, "google.cloud.metastore.v1.MaintenanceWindow"
      optional :uid, :string, 16
      optional :metadata_management_activity, :message, 17, "google.cloud.metastore.v1.MetadataManagementActivity"
      optional :release_channel, :enum, 19, "google.cloud.metastore.v1.Service.ReleaseChannel"
      oneof :metastore_config do
        optional :hive_metastore_config, :message, 5, "google.cloud.metastore.v1.HiveMetastoreConfig"
      end
    end
    add_enum "google.cloud.metastore.v1.Service.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :ACTIVE, 2
      value :SUSPENDING, 3
      value :SUSPENDED, 4
      value :UPDATING, 5
      value :DELETING, 6
      value :ERROR, 7
    end
    add_enum "google.cloud.metastore.v1.Service.Tier" do
      value :TIER_UNSPECIFIED, 0
      value :DEVELOPER, 1
      value :ENTERPRISE, 3
    end
    add_enum "google.cloud.metastore.v1.Service.ReleaseChannel" do
      value :RELEASE_CHANNEL_UNSPECIFIED, 0
      value :CANARY, 1
      value :STABLE, 2
    end
    add_message "google.cloud.metastore.v1.MaintenanceWindow" do
      optional :hour_of_day, :message, 1, "google.protobuf.Int32Value"
      optional :day_of_week, :enum, 2, "google.type.DayOfWeek"
    end
    add_message "google.cloud.metastore.v1.HiveMetastoreConfig" do
      optional :version, :string, 1
      map :config_overrides, :string, :string, 2
      optional :kerberos_config, :message, 3, "google.cloud.metastore.v1.KerberosConfig"
    end
    add_message "google.cloud.metastore.v1.KerberosConfig" do
      optional :keytab, :message, 1, "google.cloud.metastore.v1.Secret"
      optional :principal, :string, 2
      optional :krb5_config_gcs_uri, :string, 3
    end
    add_message "google.cloud.metastore.v1.Secret" do
      oneof :value do
        optional :cloud_secret, :string, 2
      end
    end
    add_message "google.cloud.metastore.v1.MetadataManagementActivity" do
      repeated :metadata_exports, :message, 1, "google.cloud.metastore.v1.MetadataExport"
      repeated :restores, :message, 2, "google.cloud.metastore.v1.Restore"
    end
    add_message "google.cloud.metastore.v1.MetadataImport" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      optional :end_time, :message, 7, "google.protobuf.Timestamp"
      optional :state, :enum, 5, "google.cloud.metastore.v1.MetadataImport.State"
      oneof :metadata do
        optional :database_dump, :message, 6, "google.cloud.metastore.v1.MetadataImport.DatabaseDump"
      end
    end
    add_message "google.cloud.metastore.v1.MetadataImport.DatabaseDump" do
      optional :database_type, :enum, 1, "google.cloud.metastore.v1.MetadataImport.DatabaseDump.DatabaseType"
      optional :gcs_uri, :string, 2
      optional :type, :enum, 4, "google.cloud.metastore.v1.DatabaseDumpSpec.Type"
    end
    add_enum "google.cloud.metastore.v1.MetadataImport.DatabaseDump.DatabaseType" do
      value :DATABASE_TYPE_UNSPECIFIED, 0
      value :MYSQL, 1
    end
    add_enum "google.cloud.metastore.v1.MetadataImport.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :UPDATING, 3
      value :FAILED, 4
    end
    add_message "google.cloud.metastore.v1.MetadataExport" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :state, :enum, 3, "google.cloud.metastore.v1.MetadataExport.State"
      optional :database_dump_type, :enum, 5, "google.cloud.metastore.v1.DatabaseDumpSpec.Type"
      oneof :destination do
        optional :destination_gcs_uri, :string, 4
      end
    end
    add_enum "google.cloud.metastore.v1.MetadataExport.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLED, 4
    end
    add_message "google.cloud.metastore.v1.Backup" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
      optional :state, :enum, 4, "google.cloud.metastore.v1.Backup.State"
      optional :service_revision, :message, 5, "google.cloud.metastore.v1.Service"
      optional :description, :string, 6
      repeated :restoring_services, :string, 7
    end
    add_enum "google.cloud.metastore.v1.Backup.State" do
      value :STATE_UNSPECIFIED, 0
      value :CREATING, 1
      value :DELETING, 2
      value :ACTIVE, 3
      value :FAILED, 4
      value :RESTORING, 5
    end
    add_message "google.cloud.metastore.v1.Restore" do
      optional :start_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :state, :enum, 3, "google.cloud.metastore.v1.Restore.State"
      optional :backup, :string, 4
      optional :type, :enum, 5, "google.cloud.metastore.v1.Restore.RestoreType"
      optional :details, :string, 6
    end
    add_enum "google.cloud.metastore.v1.Restore.State" do
      value :STATE_UNSPECIFIED, 0
      value :RUNNING, 1
      value :SUCCEEDED, 2
      value :FAILED, 3
      value :CANCELLED, 4
    end
    add_enum "google.cloud.metastore.v1.Restore.RestoreType" do
      value :RESTORE_TYPE_UNSPECIFIED, 0
      value :FULL, 1
      value :METADATA_ONLY, 2
    end
    add_message "google.cloud.metastore.v1.ListServicesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1.ListServicesResponse" do
      repeated :services, :message, 1, "google.cloud.metastore.v1.Service"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1.GetServiceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1.CreateServiceRequest" do
      optional :parent, :string, 1
      optional :service_id, :string, 2
      optional :service, :message, 3, "google.cloud.metastore.v1.Service"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1.UpdateServiceRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :service, :message, 2, "google.cloud.metastore.v1.Service"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.metastore.v1.DeleteServiceRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.metastore.v1.ListMetadataImportsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1.ListMetadataImportsResponse" do
      repeated :metadata_imports, :message, 1, "google.cloud.metastore.v1.MetadataImport"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1.GetMetadataImportRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1.CreateMetadataImportRequest" do
      optional :parent, :string, 1
      optional :metadata_import_id, :string, 2
      optional :metadata_import, :message, 3, "google.cloud.metastore.v1.MetadataImport"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1.UpdateMetadataImportRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :metadata_import, :message, 2, "google.cloud.metastore.v1.MetadataImport"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.metastore.v1.ListBackupsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.metastore.v1.ListBackupsResponse" do
      repeated :backups, :message, 1, "google.cloud.metastore.v1.Backup"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.metastore.v1.GetBackupRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.metastore.v1.CreateBackupRequest" do
      optional :parent, :string, 1
      optional :backup_id, :string, 2
      optional :backup, :message, 3, "google.cloud.metastore.v1.Backup"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1.DeleteBackupRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.metastore.v1.ExportMetadataRequest" do
      optional :service, :string, 1
      optional :request_id, :string, 3
      optional :database_dump_type, :enum, 4, "google.cloud.metastore.v1.DatabaseDumpSpec.Type"
      oneof :destination do
        optional :destination_gcs_folder, :string, 2
      end
    end
    add_message "google.cloud.metastore.v1.RestoreServiceRequest" do
      optional :service, :string, 1
      optional :backup, :string, 2
      optional :restore_type, :enum, 3, "google.cloud.metastore.v1.Restore.RestoreType"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.metastore.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.metastore.v1.LocationMetadata" do
      repeated :supported_hive_metastore_versions, :message, 1, "google.cloud.metastore.v1.LocationMetadata.HiveMetastoreVersion"
    end
    add_message "google.cloud.metastore.v1.LocationMetadata.HiveMetastoreVersion" do
      optional :version, :string, 1
      optional :is_default, :bool, 2
    end
    add_message "google.cloud.metastore.v1.DatabaseDumpSpec" do
    end
    add_enum "google.cloud.metastore.v1.DatabaseDumpSpec.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :MYSQL, 1
      value :AVRO, 2
    end
  end
end

module Google
  module Cloud
    module Metastore
      module V1
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Service").msgclass
        Service::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Service.State").enummodule
        Service::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Service.Tier").enummodule
        Service::ReleaseChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Service.ReleaseChannel").enummodule
        MaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MaintenanceWindow").msgclass
        HiveMetastoreConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.HiveMetastoreConfig").msgclass
        KerberosConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.KerberosConfig").msgclass
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Secret").msgclass
        MetadataManagementActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataManagementActivity").msgclass
        MetadataImport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataImport").msgclass
        MetadataImport::DatabaseDump = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataImport.DatabaseDump").msgclass
        MetadataImport::DatabaseDump::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataImport.DatabaseDump.DatabaseType").enummodule
        MetadataImport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataImport.State").enummodule
        MetadataExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataExport").msgclass
        MetadataExport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.MetadataExport.State").enummodule
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Backup.State").enummodule
        Restore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Restore").msgclass
        Restore::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Restore.State").enummodule
        Restore::RestoreType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.Restore.RestoreType").enummodule
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListServicesResponse").msgclass
        GetServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.GetServiceRequest").msgclass
        CreateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.CreateServiceRequest").msgclass
        UpdateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.UpdateServiceRequest").msgclass
        DeleteServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.DeleteServiceRequest").msgclass
        ListMetadataImportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListMetadataImportsRequest").msgclass
        ListMetadataImportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListMetadataImportsResponse").msgclass
        GetMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.GetMetadataImportRequest").msgclass
        CreateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.CreateMetadataImportRequest").msgclass
        UpdateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.UpdateMetadataImportRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.CreateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.DeleteBackupRequest").msgclass
        ExportMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.ExportMetadataRequest").msgclass
        RestoreServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.RestoreServiceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.OperationMetadata").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.LocationMetadata").msgclass
        LocationMetadata::HiveMetastoreVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.LocationMetadata.HiveMetastoreVersion").msgclass
        DatabaseDumpSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.DatabaseDumpSpec").msgclass
        DatabaseDumpSpec::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1.DatabaseDumpSpec.Type").enummodule
      end
    end
  end
end
