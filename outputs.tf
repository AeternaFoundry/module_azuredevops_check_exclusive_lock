output "check_exclusive_locks_id" {
  description = "Map of id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.id }
}
output "check_exclusive_locks_project_id" {
  description = "Map of project_id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.project_id }
}
output "check_exclusive_locks_target_resource_id" {
  description = "Map of target_resource_id values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.target_resource_id }
}
output "check_exclusive_locks_target_resource_type" {
  description = "Map of target_resource_type values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.target_resource_type }
}
output "check_exclusive_locks_timeout" {
  description = "Map of timeout values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.timeout }
}
output "check_exclusive_locks_version" {
  description = "Map of version values across all check_exclusive_locks, keyed the same as var.check_exclusive_locks"
  value       = { for k, v in azuredevops_check_exclusive_lock.check_exclusive_locks : k => v.version }
}

