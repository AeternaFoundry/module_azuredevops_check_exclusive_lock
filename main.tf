resource "azuredevops_check_exclusive_lock" "check_exclusive_locks" {
  for_each = var.check_exclusive_locks

  project_id           = each.value.project_id
  target_resource_id   = each.value.target_resource_id
  target_resource_type = each.value.target_resource_type
  timeout              = each.value.timeout

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

