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

require "helper"
require "google/cloud/dialogflow/cx"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Dialogflow::CX::ClientConstructionMinitest < Minitest::Test
  def test_pages
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.pages do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Pages::Client, client
    end
  end

  def test_flows
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.flows do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Flows::Client, client
    end
  end

  def test_security_settings_service
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.security_settings_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::SecuritySettingsService::Client, client
    end
  end

  def test_agents
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.agents do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Agents::Client, client
    end
  end

  def test_deployments
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.deployments do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Deployments::Client, client
    end
  end

  def test_entity_types
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.entity_types do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::EntityTypes::Client, client
    end
  end

  def test_intents
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.intents do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Intents::Client, client
    end
  end

  def test_session_entity_types
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.session_entity_types do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::SessionEntityTypes::Client, client
    end
  end

  def test_sessions
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.sessions do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Sessions::Client, client
    end
  end

  def test_transition_route_groups
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.transition_route_groups do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::TransitionRouteGroups::Client, client
    end
  end

  def test_test_cases
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.test_cases do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::TestCases::Client, client
    end
  end

  def test_environments
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.environments do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Environments::Client, client
    end
  end

  def test_experiments
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.experiments do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Experiments::Client, client
    end
  end

  def test_webhooks
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.webhooks do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Webhooks::Client, client
    end
  end

  def test_versions
    Gapic::ServiceStub.stub :new, :stub do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Dialogflow::CX.versions do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Dialogflow::CX::V3::Versions::Client, client
    end
  end
end
