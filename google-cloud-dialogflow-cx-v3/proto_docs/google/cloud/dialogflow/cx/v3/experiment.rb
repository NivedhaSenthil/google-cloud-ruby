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


module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          # Represents an experiment in an environment.
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the experiment.
          #     Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/experiments/<Experiment ID>..
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Required. The human-readable name of the experiment (unique in an
          #     environment). Limit of 64 characters.
          # @!attribute [rw] description
          #   @return [::String]
          #     The human-readable description of the experiment.
          # @!attribute [rw] state
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::State]
          #     The current state of the experiment.
          #     Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING.
          #     Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or
          #     RUNNING->DONE.
          # @!attribute [rw] definition
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::Definition]
          #     The definition of the experiment.
          # @!attribute [rw] rollout_config
          #   @return [::Google::Cloud::Dialogflow::CX::V3::RolloutConfig]
          #     The configuration for auto rollout. If set, there should be exactly two
          #     variants in the experiment (control variant being the default version of
          #     the flow), the traffic allocation for the non-control variant will
          #     gradually increase to 100% when conditions are met, and eventually
          #     replace the control variant to become the default version of the flow.
          # @!attribute [rw] rollout_state
          #   @return [::Google::Cloud::Dialogflow::CX::V3::RolloutState]
          #     State of the auto rollout process.
          # @!attribute [rw] rollout_failure_reason
          #   @return [::String]
          #     The reason why rollout has failed. Should only be set when state is
          #     ROLLOUT_FAILED.
          # @!attribute [rw] result
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::Result]
          #     Inference result of the experiment.
          # @!attribute [rw] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Creation time of this experiment.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Start time of this experiment.
          # @!attribute [rw] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     End time of this experiment.
          # @!attribute [rw] last_update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Last update time of this experiment.
          # @!attribute [rw] experiment_length
          #   @return [::Google::Protobuf::Duration]
          #     Maximum number of days to run the experiment/rollout. If auto-rollout is
          #     not enabled, default value and maximum will be 30 days. If auto-rollout is
          #     enabled, default value and maximum will be 6 days.
          # @!attribute [rw] variants_history
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::VariantsHistory>]
          #     The history of updates to the experiment variants.
          class Experiment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Definition of the experiment.
            # @!attribute [rw] condition
            #   @return [::String]
            #     The condition defines which subset of sessions are selected for
            #     this experiment. If not specified, all sessions are eligible. E.g.
            #     "query_input.language_code=en" See the [conditions
            #     reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
            # @!attribute [rw] version_variants
            #   @return [::Google::Cloud::Dialogflow::CX::V3::VersionVariants]
            #     The flow versions as the variants of this experiment.
            class Definition
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # The inference result which includes an objective metric to optimize and the
            # confidence interval.
            # @!attribute [rw] version_metrics
            #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Experiment::Result::VersionMetrics>]
            #     Version variants and metrics.
            # @!attribute [rw] last_update_time
            #   @return [::Google::Protobuf::Timestamp]
            #     The last time the experiment's stats data was updated. Will have default
            #     value if stats have never been computed for this experiment.
            class Result
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # A confidence interval is a range of possible values for the experiment
              # objective you are trying to measure.
              # @!attribute [rw] confidence_level
              #   @return [::Float]
              #     The confidence level used to construct the interval, i.e. there is X%
              #     chance that the true value is within this interval.
              # @!attribute [rw] ratio
              #   @return [::Float]
              #     The percent change between an experiment metric's value and the value
              #     for its control.
              # @!attribute [rw] lower_bound
              #   @return [::Float]
              #     Lower bound of the interval.
              # @!attribute [rw] upper_bound
              #   @return [::Float]
              #     Upper bound of the interval.
              class ConfidenceInterval
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Metric and corresponding confidence intervals.
              # @!attribute [rw] type
              #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::Result::MetricType]
              #     Ratio-based metric type. Only one of type or count_type is specified in
              #     each Metric.
              # @!attribute [rw] count_type
              #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::Result::CountType]
              #     Count-based metric type. Only one of type or count_type is specified in
              #     each Metric.
              # @!attribute [rw] ratio
              #   @return [::Float]
              #     Ratio value of a metric.
              # @!attribute [rw] count
              #   @return [::Float]
              #     Count value of a metric.
              # @!attribute [rw] confidence_interval
              #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment::Result::ConfidenceInterval]
              #     The probability that the treatment is better than all other treatments
              #     in the experiment
              class Metric
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Version variant and associated metrics.
              # @!attribute [rw] version
              #   @return [::String]
              #     The name of the flow {::Google::Cloud::Dialogflow::CX::V3::Version Version}.
              #     Format: `projects/<Project ID>/locations/<Location
              #     ID>/agents/<Agent ID>/flows/<Flow ID>/versions/<Version ID>`.
              # @!attribute [rw] metrics
              #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Experiment::Result::Metric>]
              #     The metrics and corresponding confidence intervals in the inference
              #     result.
              # @!attribute [rw] session_count
              #   @return [::Integer]
              #     Number of sessions that were allocated to this version.
              class VersionMetrics
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Types of ratio-based metric for Dialogflow experiment.
              module MetricType
                # Metric unspecified.
                METRIC_UNSPECIFIED = 0

                # Percentage of contained sessions without user calling back in 24 hours.
                CONTAINED_SESSION_NO_CALLBACK_RATE = 1

                # Percentage of sessions that were handed to a human agent.
                LIVE_AGENT_HANDOFF_RATE = 2

                # Percentage of sessions with the same user calling back.
                CALLBACK_SESSION_RATE = 3

                # Percentage of sessions where user hung up.
                ABANDONED_SESSION_RATE = 4

                # Percentage of sessions reached Dialogflow 'END_PAGE' or
                # 'END_SESSION'.
                SESSION_END_RATE = 5
              end

              # Types of count-based metric for Dialogflow experiment.
              module CountType
                # Count type unspecified.
                COUNT_TYPE_UNSPECIFIED = 0

                # Total number of occurrences of a 'NO_MATCH'.
                TOTAL_NO_MATCH_COUNT = 1

                # Total number of turn counts.
                TOTAL_TURN_COUNT = 2

                # Average turn count in a session.
                AVERAGE_TURN_COUNT = 3
              end
            end

            # The state of the experiment.
            module State
              # State unspecified.
              STATE_UNSPECIFIED = 0

              # The experiment is created but not started yet.
              DRAFT = 1

              # The experiment is running.
              RUNNING = 2

              # The experiment is done.
              DONE = 3

              # The experiment with auto-rollout enabled has failed.
              ROLLOUT_FAILED = 4
            end
          end

          # A list of flow version variants.
          # @!attribute [rw] variants
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::VersionVariants::Variant>]
          #     A list of flow version variants.
          class VersionVariants
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A single flow version with specified traffic allocation.
            # @!attribute [rw] version
            #   @return [::String]
            #     The name of the flow version.
            #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
            #     ID>/flows/<Flow ID>/versions/<Version ID>`.
            # @!attribute [rw] traffic_allocation
            #   @return [::Float]
            #     Percentage of the traffic which should be routed to this
            #     version of flow. Traffic allocation for a single flow must sum up to 1.0.
            # @!attribute [rw] is_control_group
            #   @return [::Boolean]
            #     Whether the variant is for the control group.
            class Variant
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # The history of variants update.
          # @!attribute [rw] version_variants
          #   @return [::Google::Cloud::Dialogflow::CX::V3::VersionVariants]
          #     The flow versions as the variants.
          # @!attribute [rw] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Update time of the variants.
          class VariantsHistory
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The configuration for auto rollout.
          # @!attribute [rw] rollout_steps
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::RolloutConfig::RolloutStep>]
          #     Steps to roll out a flow version. Steps should be sorted by percentage in
          #     ascending order.
          # @!attribute [rw] rollout_condition
          #   @return [::String]
          #     The conditions that are used to evaluate the success of a rollout
          #     step. If not specified, all rollout steps will proceed to the next one
          #     unless failure conditions are met. E.g. "containment_rate > 60% AND
          #     callback_rate < 20%". See the [conditions
          #     reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
          # @!attribute [rw] failure_condition
          #   @return [::String]
          #     The conditions that are used to evaluate the failure of a rollout
          #     step. If not specified, no rollout steps will fail. E.g. "containment_rate
          #     < 10% OR average_turn_count < 3". See the [conditions
          #     reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
          class RolloutConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A single rollout step with specified traffic allocation.
            # @!attribute [rw] display_name
            #   @return [::String]
            #     The name of the rollout step;
            # @!attribute [rw] traffic_percent
            #   @return [::Integer]
            #     The percentage of traffic allocated to the flow version of this rollout
            #     step. (0%, 100%].
            # @!attribute [rw] min_duration
            #   @return [::Google::Protobuf::Duration]
            #     The minimum time that this step should last. Should be longer than 1
            #     hour. If not set, the default minimum duration for each step will be 1
            #     hour.
            class RolloutStep
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # State of the auto-rollout process.
          # @!attribute [rw] step
          #   @return [::String]
          #     Display name of the current auto rollout step.
          # @!attribute [rw] step_index
          #   @return [::Integer]
          #     Index of the current step in the auto rollout steps list.
          # @!attribute [rw] start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Start time of the current step.
          class RolloutState
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#list_experiments Experiments.ListExperiments}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} to
          #     list all environments for. Format: `projects/<Project
          #     ID>/locations/<Location ID>/agents/<Agent ID>/environments/<Environment
          #     ID>`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     The maximum number of items to return in a single page. By default 20 and
          #     at most 100.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     The next_page_token value returned from a previous list request.
          class ListExperimentsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The response message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#list_experiments Experiments.ListExperiments}.
          # @!attribute [rw] experiments
          #   @return [::Array<::Google::Cloud::Dialogflow::CX::V3::Experiment>]
          #     The list of experiments. There will be a maximum number of items
          #     returned based on the page_size field in the request. The list may in some
          #     cases be empty or contain fewer entries than page_size even if this isn't
          #     the last page.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Token to retrieve the next page of results, or empty if there are no more
          #     results in the list.
          class ListExperimentsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#get_experiment Experiments.GetExperiment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the
          #     {::Google::Cloud::Dialogflow::CX::V3::Environment Environment}. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/experiments/<Experiment ID>`.
          class GetExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#create_experiment Experiments.CreateExperiment}.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Agent Agent} to create an
          #     {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} for. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>`.
          # @!attribute [rw] experiment
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment]
          #     Required. The experiment to create.
          class CreateExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#update_experiment Experiments.UpdateExperiment}.
          # @!attribute [rw] experiment
          #   @return [::Google::Cloud::Dialogflow::CX::V3::Experiment]
          #     Required. The experiment to update.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The mask to control which fields get updated.
          class UpdateExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#delete_experiment Experiments.DeleteExperiment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the
          #     {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} to delete. Format:
          #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/experiments/<Experiment ID>`.
          class DeleteExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#start_experiment Experiments.StartExperiment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the experiment to start.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/experiments/<Experiment ID>`.
          class StartExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The request message for
          # {::Google::Cloud::Dialogflow::CX::V3::Experiments::Client#stop_experiment Experiments.StopExperiment}.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Resource name of the experiment to stop.
          #     Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
          #     ID>/environments/<Environment ID>/experiments/<Experiment ID>`.
          class StopExperimentRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
