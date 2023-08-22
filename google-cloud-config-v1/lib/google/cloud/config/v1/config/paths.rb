# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module Config
      module V1
        module Config
          # Path helper methods for the Config API.
          module Paths
            ##
            # Create a fully-qualified Deployment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/deployments/{deployment}`
            #
            # @param project [String]
            # @param location [String]
            # @param deployment [String]
            #
            # @return [::String]
            def deployment_path project:, location:, deployment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/deployments/#{deployment}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Resource resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/deployments/{deployment}/revisions/{revision}/resources/{resource}`
            #
            # @param project [String]
            # @param location [String]
            # @param deployment [String]
            # @param revision [String]
            # @param resource [String]
            #
            # @return [::String]
            def resource_path project:, location:, deployment:, revision:, resource:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "deployment cannot contain /" if deployment.to_s.include? "/"
              raise ::ArgumentError, "revision cannot contain /" if revision.to_s.include? "/"

              "projects/#{project}/locations/#{location}/deployments/#{deployment}/revisions/#{revision}/resources/#{resource}"
            end

            ##
            # Create a fully-qualified Revision resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/deployments/{deployment}/revisions/{revision}`
            #
            # @param project [String]
            # @param location [String]
            # @param deployment [String]
            # @param revision [String]
            #
            # @return [::String]
            def revision_path project:, location:, deployment:, revision:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "deployment cannot contain /" if deployment.to_s.include? "/"

              "projects/#{project}/locations/#{location}/deployments/#{deployment}/revisions/#{revision}"
            end

            ##
            # Create a fully-qualified ServiceAccount resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/serviceAccounts/{service_account}`
            #
            # @param project [String]
            # @param service_account [String]
            #
            # @return [::String]
            def service_account_path project:, service_account:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/serviceAccounts/#{service_account}"
            end

            ##
            # Create a fully-qualified WorkerPool resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/workerPools/{worker_pool}`
            #
            # @param project [String]
            # @param location [String]
            # @param worker_pool [String]
            #
            # @return [::String]
            def worker_pool_path project:, location:, worker_pool:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/workerPools/#{worker_pool}"
            end

            extend self
          end
        end
      end
    end
  end
end
