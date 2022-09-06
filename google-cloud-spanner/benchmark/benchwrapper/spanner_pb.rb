# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: spanner.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("spanner.proto", :syntax => :proto3) do
    add_message "spanner_bench.Singer" do
      optional :id, :int64, 1
      optional :first_name, :string, 2
      optional :last_name, :string, 3
      optional :singer_info, :string, 4
    end
    add_message "spanner_bench.Album" do
      optional :id, :int64, 1
      optional :singer_id, :int64, 2
      optional :album_title, :string, 3
    end
    add_message "spanner_bench.ReadQuery" do
      optional :query, :string, 1
    end
    add_message "spanner_bench.InsertQuery" do
      repeated :singers, :message, 1, "spanner_bench.Singer"
      repeated :albums, :message, 2, "spanner_bench.Album"
    end
    add_message "spanner_bench.UpdateQuery" do
      repeated :queries, :string, 1
    end
    add_message "spanner_bench.EmptyResponse" do
    end
  end
end

module SpannerBench
  Singer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.Singer").msgclass
  Album = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.Album").msgclass
  ReadQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.ReadQuery").msgclass
  InsertQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.InsertQuery").msgclass
  UpdateQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.UpdateQuery").msgclass
  EmptyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("spanner_bench.EmptyResponse").msgclass
end
