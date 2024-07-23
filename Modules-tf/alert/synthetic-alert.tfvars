synthetic-1 = {
  "0" = {
    app_name="FoodMe-Ping"
    name               = "synthetic-alert-1"
    account_id         = 4495087
    enabled            = true
    aggregation_window = 60
    critical=            true
    critical_threshold          = 5
    critical_operator          = "above"
    critical_threshold_duration = 300
    warning            = true
    threshold          = 3.5
    operator           = "above"
    threshold_duration = 600
    query="SELECT percentage(count(*), where result = 'FAILED') FROM SyntheticCheck WHERE monitorName = 'FoodMe-Ping'"

  }
}