module "alert-policy" {
  source  = "./module_alert"
  alert_1 = var.alert_1
  apikey = var.apikey
}

module "alert-policy-2" {
  source  = "./module_alert"
    alert_1 = var.browser-1
    apikey = var.apikey
}
module "alert-policy-3" {
  source="./module_alert"
  alert_1 = var.synthetic-1
  apikey = var.apikey
}