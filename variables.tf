variable "check_exclusive_locks" {
  description = <<EOT
Map of check_exclusive_locks, attributes below
Required:
    - project_id
    - target_resource_id
    - target_resource_type
Optional:
    - timeout
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    project_id           = string
    target_resource_id   = string
    target_resource_type = string
    timeout              = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

