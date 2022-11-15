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
    module Run
      module V2
        # Request message for obtaining a Execution by its full name.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The full name of the Execution.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/jobs/\\{job}/executions/\\{execution},
        #     where \\{project} can be project id or number.
        class GetExecutionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for retrieving a list of Executions.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The Execution from which the Executions should be listed.
        #     To list all Executions across Jobs, use "-" instead of Job name.
        #     Format: projects/\\{project}/locations/\\{location}/jobs/\\{job}, where \\{project}
        #     can be project id or number.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of Executions to return in this call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token received from a previous call to ListExecutions.
        #     All other parameters must match.
        # @!attribute [rw] show_deleted
        #   @return [::Boolean]
        #     If true, returns deleted (but unexpired) resources along with active ones.
        class ListExecutionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message containing a list of Executions.
        # @!attribute [rw] executions
        #   @return [::Array<::Google::Cloud::Run::V2::Execution>]
        #     The resulting list of Executions.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token indicating there are more items than page_size. Use it in the next
        #     ListExecutions request to continue.
        class ListExecutionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for deleting an Execution.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Execution to delete.
        #     Format:
        #     projects/\\{project}/locations/\\{location}/jobs/\\{job}/executions/\\{execution},
        #     where \\{project} can be project id or number.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Indicates that the request should be validated without actually
        #     deleting any resources.
        # @!attribute [rw] etag
        #   @return [::String]
        #     A system-generated fingerprint for this version of the resource.
        #     This may be used to detect modification conflict during updates.
        class DeleteExecutionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Execution represents the configuration of a single execution. A execution an
        # immutable resource that references a container image which is run to
        # completion.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The unique name of this Execution.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Server assigned unique identifier for the Execution. The value is a UUID4
        #     string and guaranteed to remain unchanged until the resource is deleted.
        # @!attribute [r] generation
        #   @return [::Integer]
        #     Output only. A number that monotonically increases every time the user
        #     modifies the desired state.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style labels for the resource.
        #     User-provided labels are shared with Google's billing system, so they can
        #     be used to filter, or break down billing charges by team, component,
        #     environment, state, etc. For more information, visit
        #     https://cloud.google.com/resource-manager/docs/creating-managing-labels or
        #     https://cloud.google.com/run/docs/configuring/labels
        #     Cloud Run will populate some labels with 'run.googleapis.com' or
        #     'serving.knative.dev' namespaces. Those labels are read-only, and user
        #     changes will not be preserved.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style annotations for the resource.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Represents time when the execution was acknowledged by the execution
        #     controller. It is not guaranteed to be set in happens-before order across
        #     separate operations.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Represents time when the execution started to run.
        #     It is not guaranteed to be set in happens-before order across separate
        #     operations.
        # @!attribute [r] completion_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Represents time when the execution was completed. It is not guaranteed to
        #     be set in happens-before order across separate operations.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last-modified time.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. For a deleted resource, the deletion time. It is only
        #     populated as a response to a Delete request.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. For a deleted resource, the time after which it will be
        #     permamently deleted. It is only populated as a response to a Delete
        #     request.
        # @!attribute [rw] launch_stage
        #   @return [::Google::Api::LaunchStage]
        #     Set the launch stage to a preview stage on write to allow use of preview
        #     features in that stage. On read, describes whether the resource uses
        #     preview features. Launch Stages are defined at [Google Cloud Platform
        #     Launch Stages](https://cloud.google.com/terms/launch-stages).
        # @!attribute [r] job
        #   @return [::String]
        #     Output only. The name of the parent Job.
        # @!attribute [r] parallelism
        #   @return [::Integer]
        #     Output only. Specifies the maximum desired number of tasks the execution should
        #     run at any given time. Must be <= task_count. The actual number of
        #     tasks running in steady state will be less than this number when
        #     ((.spec.task_count - .status.successful) < .spec.parallelism), i.e. when
        #     the work left to do is less than max parallelism. More info:
        #     https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
        # @!attribute [r] task_count
        #   @return [::Integer]
        #     Output only. Specifies the desired number of tasks the execution should run.
        #     Setting to 1 means that parallelism is limited to 1 and the success of
        #     that task signals the success of the execution.
        #     More info:
        #     https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
        # @!attribute [r] template
        #   @return [::Google::Cloud::Run::V2::TaskTemplate]
        #     Output only. The template used to create tasks for this execution.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. Indicates whether the resource's reconciliation is still in progress.
        #     See comments in `Job.reconciling` for additional information on
        #     reconciliation process in Cloud Run.
        # @!attribute [r] conditions
        #   @return [::Array<::Google::Cloud::Run::V2::Condition>]
        #     Output only. The Condition of this Execution, containing its readiness status, and
        #     detailed error information in case it did not reach the desired state.
        # @!attribute [r] observed_generation
        #   @return [::Integer]
        #     Output only. The generation of this Execution. See comments in `reconciling` for
        #     additional information on reconciliation process in Cloud Run.
        # @!attribute [r] running_count
        #   @return [::Integer]
        #     Output only. The number of actively running tasks.
        # @!attribute [r] succeeded_count
        #   @return [::Integer]
        #     Output only. The number of tasks which reached phase Succeeded.
        # @!attribute [r] failed_count
        #   @return [::Integer]
        #     Output only. The number of tasks which reached phase Failed.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. A system-generated fingerprint for this version of the
        #     resource. May be used to detect modification conflict during updates.
        class Execution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end