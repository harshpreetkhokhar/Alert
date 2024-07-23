terraform plan -var-file="./alert/apm-condition.tfvars" -var-file="./alert/browser-condition.tfvars" -var-file="./alert/synthetic-alert.tfvars"


#we can use apm-condition.auto.tfvars name for aur tfvars to automatically run 