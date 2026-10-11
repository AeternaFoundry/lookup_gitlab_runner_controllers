output "runner_controllers_lookup_id" {
  description = "Map of id values across all runner_controllers_lookup, keyed the same as var.runner_controllers_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_runner_controllers.runner_controllers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "runner_controllers_lookup_runner_controllers" {
  description = "Map of runner_controllers values across all runner_controllers_lookup, keyed the same as var.runner_controllers_lookup except keys with no runner_controllers are omitted"
  value       = { for k, v in data.gitlab_runner_controllers.runner_controllers_lookup : k => v.runner_controllers if v.runner_controllers != null && length(v.runner_controllers) > 0 }
}

