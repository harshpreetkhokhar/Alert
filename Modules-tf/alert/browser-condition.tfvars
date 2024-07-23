browser-1 = {
  "0" = {
    app_name="ecom"
    name               = "browser-condition-1"
    account_id         = 4495087
    enabled            = true
    aggregation_window = 60
       critical=            true
    critical_threshold          = 5
    critical_operator          = "above"
    critical_threshold_duration = 300
    threshold          = 5
    operator           = "above"
    threshold_duration = 300
    warning            = true
    threshold          = 3.5
    operator           = "above"
    threshold_duration = 600
    query="SELECT percentage(count(*), where error IS NOT NULL) FROM PageView"

  }
  "1" = {
    app_name="ecom"
    name               = "browser-condition-2"
    account_id         = 4495087
    enabled            = true
    aggregation_window = 60
    warning = false
       critical=            true
    critical_threshold          = 5
    critical_operator          = "above"
    critical_threshold_duration = 300
   query="SELECT percentage(count(*), where error IS NOT NULL) FROM PageView "
  }
}