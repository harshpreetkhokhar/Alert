//1st way
variable "policy-condition" {
  type = any
}

//2nd way
variable "typeofdestination" {
  type = string
}
variable "property-key" {
  type = string
}
variable "property-value" {
  type = string
}
variable "channel-type" {
  type = string
}

variable "channel-product" {
  type = string
}

variable "channel-property-key" {
  type = string
}
variable "channel-property-value" {
  type = string
}
variable "apikey" {
  type = string
}

variable "accountID" {
  type = string
}


//3rd way
variable "alert-workflow" {
  type = list(object({
    muting_rules_handling = string
    predicate = list(object({
      operator  = string
      attribute = string
    }))
    })
  )
}
