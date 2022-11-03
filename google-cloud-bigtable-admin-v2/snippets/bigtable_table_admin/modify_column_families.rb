# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# [START bigtableadmin_v2_generated_BigtableTableAdmin_ModifyColumnFamilies_sync]
require "google/cloud/bigtable/admin/v2"

##
# Example demonstrating basic usage of
# Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client#modify_column_families
#
def modify_column_families
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Bigtable::Admin::V2::ModifyColumnFamiliesRequest.new

  # Call the modify_column_families method.
  result = client.modify_column_families request

  # The returned object is of type Google::Cloud::Bigtable::Admin::V2::Table.
  p result
end
# [END bigtableadmin_v2_generated_BigtableTableAdmin_ModifyColumnFamilies_sync]
