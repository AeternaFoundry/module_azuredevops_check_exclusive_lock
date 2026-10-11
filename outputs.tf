output "check_exclusive_locks_id" {
  description = "Map of id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no id are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "check_exclusive_locks_project_id" {
  description = "Map of project_id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "check_exclusive_locks_target_resource_id" {
  description = "Map of target_resource_id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no target_resource_id are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}
output "check_exclusive_locks_target_resource_type" {
  description = "Map of target_resource_type values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no target_resource_type are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.target_resource_type if v.target_resource_type != null && length(v.target_resource_type) > 0 }
}
output "check_exclusive_locks_timeout" {
  description = "Map of timeout values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no timeout are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.timeout if v.timeout != null }
}
output "check_exclusive_locks_version" {
  description = "Map of version values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks except keys with no version are omitted"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.version if v.version != null }
}

