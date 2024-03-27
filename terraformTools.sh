action=${1}

terraform init

if [ "${action}" == "plan" ]; then
terraform ${action}
 exit
fi

terraform ${action} -auto-approve