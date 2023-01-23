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
    module VMMigration
      module V1
        module VMMigration
          # Path helper methods for the VmMigration API.
          module Paths
            ##
            # Create a fully-qualified CloneJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/migratingVms/{migrating_vm}/cloneJobs/{clone_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param migrating_vm [String]
            # @param clone_job [String]
            #
            # @return [::String]
            def clone_job_path project:, location:, source:, migrating_vm:, clone_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"
              raise ::ArgumentError, "migrating_vm cannot contain /" if migrating_vm.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/migratingVms/#{migrating_vm}/cloneJobs/#{clone_job}"
            end

            ##
            # Create a fully-qualified CutoverJob resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/migratingVms/{migrating_vm}/cutoverJobs/{cutover_job}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param migrating_vm [String]
            # @param cutover_job [String]
            #
            # @return [::String]
            def cutover_job_path project:, location:, source:, migrating_vm:, cutover_job:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"
              raise ::ArgumentError, "migrating_vm cannot contain /" if migrating_vm.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/migratingVms/#{migrating_vm}/cutoverJobs/#{cutover_job}"
            end

            ##
            # Create a fully-qualified DatacenterConnector resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/datacenterConnectors/{datacenter_connector}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param datacenter_connector [String]
            #
            # @return [::String]
            def datacenter_connector_path project:, location:, source:, datacenter_connector:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/datacenterConnectors/#{datacenter_connector}"
            end

            ##
            # Create a fully-qualified Group resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/groups/{group}`
            #
            # @param project [String]
            # @param location [String]
            # @param group [String]
            #
            # @return [::String]
            def group_path project:, location:, group:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/groups/#{group}"
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
            # Create a fully-qualified MigratingVm resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/migratingVms/{migrating_vm}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param migrating_vm [String]
            #
            # @return [::String]
            def migrating_vm_path project:, location:, source:, migrating_vm:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/migratingVms/#{migrating_vm}"
            end

            ##
            # Create a fully-qualified ReplicationCycle resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/migratingVms/{migrating_vm}/replicationCycles/{replication_cycle}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param migrating_vm [String]
            # @param replication_cycle [String]
            #
            # @return [::String]
            def replication_cycle_path project:, location:, source:, migrating_vm:, replication_cycle:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"
              raise ::ArgumentError, "migrating_vm cannot contain /" if migrating_vm.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/migratingVms/#{migrating_vm}/replicationCycles/#{replication_cycle}"
            end

            ##
            # Create a fully-qualified Source resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            #
            # @return [::String]
            def source_path project:, location:, source:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}"
            end

            ##
            # Create a fully-qualified TargetProject resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/targetProjects/{target_project}`
            #
            # @param project [String]
            # @param location [String]
            # @param target_project [String]
            #
            # @return [::String]
            def target_project_path project:, location:, target_project:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/targetProjects/#{target_project}"
            end

            ##
            # Create a fully-qualified UtilizationReport resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/sources/{source}/utilizationReports/{utilization_report}`
            #
            # @param project [String]
            # @param location [String]
            # @param source [String]
            # @param utilization_report [String]
            #
            # @return [::String]
            def utilization_report_path project:, location:, source:, utilization_report:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "source cannot contain /" if source.to_s.include? "/"

              "projects/#{project}/locations/#{location}/sources/#{source}/utilizationReports/#{utilization_report}"
            end

            extend self
          end
        end
      end
    end
  end
end
