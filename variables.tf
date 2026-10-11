variable "teams_lookup" {
  description = <<EOT
Map of teams_lookup, attributes below
Optional:
    - org_id
    - query
EOT

  type = map(object({
    org_id = optional(string)
    query  = optional(string)
  }))
}

