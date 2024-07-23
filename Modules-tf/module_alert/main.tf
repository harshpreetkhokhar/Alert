terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">=3.0"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = "4495087"
  api_key    =   var.apikey # Secure your API key properly in real scenarios
  region     = "US"          # Valid regions are US and EU
}

data "newrelic_entity" "app" {
  for_each = var.alert_1
  name = each.value.app_name
#   type = "APPLICATION"
#   domain = "APM"
}

resource "newrelic_alert_policy" "alert-policy" {
  # count= length(var.alert_1)
  name = "ALERT-POLICY"
  incident_preference = "PER_POLICY" 
}

resource "newrelic_nrql_alert_condition" "alert" {
  for_each                       = var.alert_1
  account_id                     = each.value.account_id
  policy_id                      = newrelic_alert_policy.alert-policy.id
  type                           = "static"
  name                           = "${each.value.name}-error-percentage"
#   description                    = each.value.description
  enabled                        = each.value.enabled
  violation_time_limit_seconds   = 1800
  aggregation_window             = each.value.aggregation_window
  aggregation_method             = "event_flow"
  aggregation_delay              = 1
  open_violation_on_expiration   = false
  close_violations_on_expiration = false

  nrql {
    query =each.value.query
  }

  

  dynamic "critical" {
    for_each = each.value.critical ? [each.value] : []
    #for_each = lookup(each.value, "critical", []) != [] ? [each.value.critical] : []
    content {
      operator              = each.value.critical_operator
      threshold             = each.value.critical_threshold
      threshold_duration    = each.value.critical_threshold_duration
      threshold_occurrences = "ALL"
    }
  }

  dynamic "warning" {
    for_each = each.value.warning ? [each.value] : []
    #for_each = lookup(each.value, "warning", []) != [] ? [each.value.warning] : []
    content {
      operator              = warning.value.operator
      threshold             = warning.value.threshold
      threshold_duration    = warning.value.threshold_duration
      threshold_occurrences = "ALL"
    }
  }
}