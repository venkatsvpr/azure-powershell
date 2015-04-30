﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

namespace Microsoft.Azure.Commands.ResourceManager.Cmdlets.Implementation
{
    using System.Management.Automation;

    /// <summary>
    /// The remove azure resource lock cmdlet.
    /// </summary>
    [Cmdlet(VerbsCommon.Remove, "AzureResourceLock", SupportsShouldProcess = true), OutputType(typeof(PSObject))]
    public class RemoveAzureResourceLockCmdlet : ResourceLockManipulationCmdletBase
    {
        /// <summary>
        /// Executes the cmdlet.
        /// </summary>
        protected override void OnProcessRecord()
        {
            base.OnProcessRecord();

            var resourceId = this.GetResourceId();

            this.ConfirmAction(
                this.Force,
                "Are you sure you want to remove the following lock: " + resourceId,
                "Removing the lock...",
                resourceId,
                () =>
                {
                    var apiVersion = this.DetermineApiVersion(resourceId: resourceId).Result;

                    var operationResult = this.GetResourcesClient()
                        .DeleteResource(
                            resourceId: resourceId,
                            apiVersion: apiVersion,
                            cancellationToken: this.CancellationToken.Value)
                        .Result;

                    var managementUri = this.GetResourcesClient()
                      .GetResourceManagementRequestUri(
                          resourceId: resourceId,
                          apiVersion: apiVersion);

                    var activity = string.Format("DELETE {0}", managementUri.PathAndQuery);
                    var result = this.GetLongRunningOperationTracker(activityName: activity, isResourceCreateOrUpdate: false)
                        .WaitOnOperation(operationResult: operationResult);

                    this.WriteObject(result);
                });
        }
    }
}