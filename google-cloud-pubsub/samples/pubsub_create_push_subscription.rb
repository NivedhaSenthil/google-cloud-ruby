# Copyright 2023 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "google/cloud/pubsub"

def create_push_subscription topic_id:, subscription_id:, endpoint:
  # [START pubsub_create_push_subscription]
  # topic_id          = "your-topic-id"
  # subscription_id   = "your-subscription-id"
  # endpoint          = "https://your-test-project.appspot.com/push"

  pubsub = Google::Cloud::Pubsub.new

  topic        = pubsub.topic topic_id
  subscription = topic.subscribe subscription_id,
                                 endpoint: endpoint

  puts "Push subscription #{subscription_id} created."
  # [END pubsub_create_push_subscription]
end
