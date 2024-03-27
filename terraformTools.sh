action=${1}

terraform init
terraform ${action} --auto-approve
