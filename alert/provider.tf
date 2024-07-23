terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">=3.40.1"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.accountID #
  api_key    = var.apikey    # # Secure your API key properly in real scenarios
  region     = "US"          # Valid regions are US and EU
}

