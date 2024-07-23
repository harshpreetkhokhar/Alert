alert_1 = {
   
  "0" = {
     app_name="Flask-Feedback-Form-master"
    name               = "a-1"
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
    query="SELECT percentage(count(*),where message like '%error%' AND message NOT LIKE '%ignore%') FROM Log "

  }
  "1" = {
     app_name="Flask-Feedback-Form-master"
    name               = "a-2"
    account_id         = 4495087
    enabled            = true
    aggregation_window = 60
    warning = false
       critical=            true
    critical_threshold          = 5
    critical_operator          = "above"
    critical_threshold_duration = 300
    query="SELECT percentage(count(*),where message like '%error%' AND message NOT LIKE '%ignore%') FROM Log "

  }
  "2" = {
     app_name="Flask-Feedback-Form-master"
    name               = "a-3"
    account_id         = 4495087
    enabled            = true
    aggregation_window = 60
    critical           = false
    warning            = true
    threshold          = 3.5
    operator           = "above"
    threshold_duration = 600
    query="SELECT percentage(count(*),where message like '%error%' AND message NOT LIKE '%ignore%') FROM Log "
  }
}