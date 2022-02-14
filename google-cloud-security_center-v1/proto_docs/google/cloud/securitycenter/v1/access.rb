# frozen_string_literal: true

# Copyright 2022 Google LLC
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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # Represents an access event.
        # @!attribute [rw] principal_email
        #   @return [::String]
        #     Associated email, such as "foo@google.com".
        # @!attribute [rw] caller_ip
        #   @return [::String]
        #     Caller's IP address, such as "1.1.1.1".
        # @!attribute [rw] caller_ip_geo
        #   @return [::Google::Cloud::SecurityCenter::V1::Geolocation]
        #     The caller IP's geolocation, which identifies where the call came from.
        # @!attribute [rw] user_agent_family
        #   @return [::String]
        #     What kind of user agent is associated, e.g. operating system shells,
        #     embedded or stand-alone applications, etc.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     This is the API service that the service account made a call to, e.g.
        #     "iam.googleapis.com"
        # @!attribute [rw] method_name
        #   @return [::String]
        #     The method that the service account called, e.g. "SetIamPolicy".
        class Access
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a geographical location for a given access.
        # @!attribute [rw] region_code
        #   @return [::String]
        #     A CLDR.
        class Geolocation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end