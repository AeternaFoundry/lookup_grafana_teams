output "teams_lookup_id" {
  description = "Map of id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_teams.teams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "teams_lookup_org_id" {
  description = "Map of org_id values across all teams_lookup, keyed the same as var.teams_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.grafana_teams.teams_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "teams_lookup_query" {
  description = "Map of query values across all teams_lookup, keyed the same as var.teams_lookup except keys with no query are omitted"
  value       = { for k, v in data.grafana_teams.teams_lookup : k => v.query if v.query != null && length(v.query) > 0 }
}
output "teams_lookup_teams" {
  description = "Map of teams values across all teams_lookup, keyed the same as var.teams_lookup except keys with no teams are omitted"
  value       = { for k, v in data.grafana_teams.teams_lookup : k => v.teams if v.teams != null && length(v.teams) > 0 }
}

