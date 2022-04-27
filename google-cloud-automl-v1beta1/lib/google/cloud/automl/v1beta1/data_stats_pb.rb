# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/data_stats.proto

require 'google/protobuf'

require 'google/api/annotations_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/automl/v1beta1/data_stats.proto", :syntax => :proto3) do
    add_message "google.cloud.automl.v1beta1.DataStats" do
      optional :distinct_value_count, :int64, 1
      optional :null_value_count, :int64, 2
      optional :valid_value_count, :int64, 9
      oneof :stats do
        optional :float64_stats, :message, 3, "google.cloud.automl.v1beta1.Float64Stats"
        optional :string_stats, :message, 4, "google.cloud.automl.v1beta1.StringStats"
        optional :timestamp_stats, :message, 5, "google.cloud.automl.v1beta1.TimestampStats"
        optional :array_stats, :message, 6, "google.cloud.automl.v1beta1.ArrayStats"
        optional :struct_stats, :message, 7, "google.cloud.automl.v1beta1.StructStats"
        optional :category_stats, :message, 8, "google.cloud.automl.v1beta1.CategoryStats"
      end
    end
    add_message "google.cloud.automl.v1beta1.Float64Stats" do
      optional :mean, :double, 1
      optional :standard_deviation, :double, 2
      repeated :quantiles, :double, 3
      repeated :histogram_buckets, :message, 4, "google.cloud.automl.v1beta1.Float64Stats.HistogramBucket"
    end
    add_message "google.cloud.automl.v1beta1.Float64Stats.HistogramBucket" do
      optional :min, :double, 1
      optional :max, :double, 2
      optional :count, :int64, 3
    end
    add_message "google.cloud.automl.v1beta1.StringStats" do
      repeated :top_unigram_stats, :message, 1, "google.cloud.automl.v1beta1.StringStats.UnigramStats"
    end
    add_message "google.cloud.automl.v1beta1.StringStats.UnigramStats" do
      optional :value, :string, 1
      optional :count, :int64, 2
    end
    add_message "google.cloud.automl.v1beta1.TimestampStats" do
      map :granular_stats, :string, :message, 1, "google.cloud.automl.v1beta1.TimestampStats.GranularStats"
    end
    add_message "google.cloud.automl.v1beta1.TimestampStats.GranularStats" do
      map :buckets, :int32, :int64, 1
    end
    add_message "google.cloud.automl.v1beta1.ArrayStats" do
      optional :member_stats, :message, 2, "google.cloud.automl.v1beta1.DataStats"
    end
    add_message "google.cloud.automl.v1beta1.StructStats" do
      map :field_stats, :string, :message, 1, "google.cloud.automl.v1beta1.DataStats"
    end
    add_message "google.cloud.automl.v1beta1.CategoryStats" do
      repeated :top_category_stats, :message, 1, "google.cloud.automl.v1beta1.CategoryStats.SingleCategoryStats"
    end
    add_message "google.cloud.automl.v1beta1.CategoryStats.SingleCategoryStats" do
      optional :value, :string, 1
      optional :count, :int64, 2
    end
    add_message "google.cloud.automl.v1beta1.CorrelationStats" do
      optional :cramers_v, :double, 1
    end
  end
end

module Google
  module Cloud
    module AutoML
      module V1beta1
        DataStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.DataStats").msgclass
        Float64Stats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Float64Stats").msgclass
        Float64Stats::HistogramBucket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.Float64Stats.HistogramBucket").msgclass
        StringStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.StringStats").msgclass
        StringStats::UnigramStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.StringStats.UnigramStats").msgclass
        TimestampStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.TimestampStats").msgclass
        TimestampStats::GranularStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.TimestampStats.GranularStats").msgclass
        ArrayStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.ArrayStats").msgclass
        StructStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.StructStats").msgclass
        CategoryStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.CategoryStats").msgclass
        CategoryStats::SingleCategoryStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.CategoryStats.SingleCategoryStats").msgclass
        CorrelationStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.CorrelationStats").msgclass
      end
    end
  end
end
