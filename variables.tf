variable "runner_controllers_lookup" {
  description = <<EOT
Map of runner_controllers_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

