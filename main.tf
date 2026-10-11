data "grafana_teams" "teams_lookup" {
  for_each = var.teams_lookup

  org_id = each.value.org_id
  query  = each.value.query
}

