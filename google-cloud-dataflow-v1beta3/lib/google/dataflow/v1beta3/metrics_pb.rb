# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/dataflow/v1beta3/metrics.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n%google/dataflow/v1beta3/metrics.proto\x12\x17google.dataflow.v1beta3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb1\x01\n\x14MetricStructuredName\x12\x0e\n\x06origin\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x12K\n\x07\x63ontext\x18\x03 \x03(\x0b\x32:.google.dataflow.v1beta3.MetricStructuredName.ContextEntry\x1a.\n\x0c\x43ontextEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xc0\x03\n\x0cMetricUpdate\x12;\n\x04name\x18\x01 \x01(\x0b\x32-.google.dataflow.v1beta3.MetricStructuredName\x12\x0c\n\x04kind\x18\x02 \x01(\t\x12\x12\n\ncumulative\x18\x03 \x01(\x08\x12&\n\x06scalar\x18\x04 \x01(\x0b\x32\x16.google.protobuf.Value\x12(\n\x08mean_sum\x18\x05 \x01(\x0b\x32\x16.google.protobuf.Value\x12*\n\nmean_count\x18\x06 \x01(\x0b\x32\x16.google.protobuf.Value\x12#\n\x03set\x18\x07 \x01(\x0b\x32\x16.google.protobuf.Value\x12,\n\x0c\x64istribution\x18\x0b \x01(\x0b\x32\x16.google.protobuf.Value\x12%\n\x05gauge\x18\x0c \x01(\x0b\x32\x16.google.protobuf.Value\x12(\n\x08internal\x18\x08 \x01(\x0b\x32\x16.google.protobuf.Value\x12/\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"|\n\x14GetJobMetricsRequest\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x10\n\x08location\x18\x04 \x01(\t\"u\n\nJobMetrics\x12/\n\x0bmetric_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x36\n\x07metrics\x18\x02 \x03(\x0b\x32%.google.dataflow.v1beta3.MetricUpdate\"|\n\x1dGetJobExecutionDetailsRequest\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12\x10\n\x08location\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x05 \x01(\t\"\xb8\x01\n\x12ProgressTimeseries\x12\x18\n\x10\x63urrent_progress\x18\x01 \x01(\x01\x12\x46\n\x0b\x64\x61ta_points\x18\x02 \x03(\x0b\x32\x31.google.dataflow.v1beta3.ProgressTimeseries.Point\x1a@\n\x05Point\x12(\n\x04time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\r\n\x05value\x18\x02 \x01(\x01\"\xad\x02\n\x0cStageSummary\x12\x10\n\x08stage_id\x18\x01 \x01(\t\x12\x36\n\x05state\x18\x02 \x01(\x0e\x32\'.google.dataflow.v1beta3.ExecutionState\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12=\n\x08progress\x18\x05 \x01(\x0b\x32+.google.dataflow.v1beta3.ProgressTimeseries\x12\x36\n\x07metrics\x18\x06 \x03(\x0b\x32%.google.dataflow.v1beta3.MetricUpdate\"e\n\x13JobExecutionDetails\x12\x35\n\x06stages\x18\x01 \x03(\x0b\x32%.google.dataflow.v1beta3.StageSummary\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xee\x01\n\x1fGetStageExecutionDetailsRequest\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x0e\n\x06job_id\x18\x02 \x01(\t\x12\x10\n\x08location\x18\x03 \x01(\t\x12\x10\n\x08stage_id\x18\x04 \x01(\t\x12\x11\n\tpage_size\x18\x05 \x01(\x05\x12\x12\n\npage_token\x18\x06 \x01(\t\x12.\n\nstart_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xc3\x02\n\x0fWorkItemDetails\x12\x0f\n\x07task_id\x18\x01 \x01(\t\x12\x12\n\nattempt_id\x18\x02 \x01(\t\x12.\n\nstart_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x36\n\x05state\x18\x05 \x01(\x0e\x32\'.google.dataflow.v1beta3.ExecutionState\x12=\n\x08progress\x18\x06 \x01(\x0b\x32+.google.dataflow.v1beta3.ProgressTimeseries\x12\x36\n\x07metrics\x18\x07 \x03(\x0b\x32%.google.dataflow.v1beta3.MetricUpdate\"b\n\rWorkerDetails\x12\x13\n\x0bworker_name\x18\x01 \x01(\t\x12<\n\nwork_items\x18\x02 \x03(\x0b\x32(.google.dataflow.v1beta3.WorkItemDetails\"i\n\x15StageExecutionDetails\x12\x37\n\x07workers\x18\x01 \x03(\x0b\x32&.google.dataflow.v1beta3.WorkerDetails\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t*\xc5\x01\n\x0e\x45xecutionState\x12\x1b\n\x17\x45XECUTION_STATE_UNKNOWN\x10\x00\x12\x1f\n\x1b\x45XECUTION_STATE_NOT_STARTED\x10\x01\x12\x1b\n\x17\x45XECUTION_STATE_RUNNING\x10\x02\x12\x1d\n\x19\x45XECUTION_STATE_SUCCEEDED\x10\x03\x12\x1a\n\x16\x45XECUTION_STATE_FAILED\x10\x04\x12\x1d\n\x19\x45XECUTION_STATE_CANCELLED\x10\x05\x32\x9f\x07\n\x0eMetricsV1Beta3\x12\xe9\x01\n\rGetJobMetrics\x12-.google.dataflow.v1beta3.GetJobMetricsRequest\x1a#.google.dataflow.v1beta3.JobMetrics\"\x83\x01\x82\xd3\xe4\x93\x02}\x12\x46/v1b3/projects/{project_id}/locations/{location}/jobs/{job_id}/metricsZ3\x12\x31/v1b3/projects/{project_id}/jobs/{job_id}/metrics\x12\xd7\x01\n\x16GetJobExecutionDetails\x12\x36.google.dataflow.v1beta3.GetJobExecutionDetailsRequest\x1a,.google.dataflow.v1beta3.JobExecutionDetails\"W\x82\xd3\xe4\x93\x02Q\x12O/v1b3/projects/{project_id}/locations/{location}/jobs/{job_id}/executionDetails\x12\xef\x01\n\x18GetStageExecutionDetails\x12\x38.google.dataflow.v1beta3.GetStageExecutionDetailsRequest\x1a..google.dataflow.v1beta3.StageExecutionDetails\"i\x82\xd3\xe4\x93\x02\x63\x12\x61/v1b3/projects/{project_id}/locations/{location}/jobs/{job_id}/stages/{stage_id}/executionDetails\x1a\xd4\x01\xca\x41\x17\x64\x61taflow.googleapis.com\xd2\x41\xb6\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/compute,https://www.googleapis.com/auth/compute.readonly,https://www.googleapis.com/auth/userinfo.emailB\xcf\x01\n\x1b\x63om.google.dataflow.v1beta3B\x0cMetricsProtoP\x01Z=cloud.google.com/go/dataflow/apiv1beta3/dataflowpb;dataflowpb\xaa\x02\x1dGoogle.Cloud.Dataflow.V1Beta3\xca\x02\x1dGoogle\\Cloud\\Dataflow\\V1beta3\xea\x02 Google::Cloud::Dataflow::V1beta3b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module Dataflow
      module V1beta3
        MetricStructuredName = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.MetricStructuredName").msgclass
        MetricUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.MetricUpdate").msgclass
        GetJobMetricsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetJobMetricsRequest").msgclass
        JobMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobMetrics").msgclass
        GetJobExecutionDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetJobExecutionDetailsRequest").msgclass
        ProgressTimeseries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ProgressTimeseries").msgclass
        ProgressTimeseries::Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ProgressTimeseries.Point").msgclass
        StageSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.StageSummary").msgclass
        JobExecutionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.JobExecutionDetails").msgclass
        GetStageExecutionDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetStageExecutionDetailsRequest").msgclass
        WorkItemDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkItemDetails").msgclass
        WorkerDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.WorkerDetails").msgclass
        StageExecutionDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.StageExecutionDetails").msgclass
        ExecutionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ExecutionState").enummodule
      end
    end
  end
end
