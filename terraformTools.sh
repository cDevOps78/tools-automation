action=${1}

if [ $# -lt 1 ]; then
  echo -e "\e[31m \$1 Input is missing-(plan|apply|destroy) \e[0m"
  exit 1
fi

terraform init

if [ "${action}" == "plan" ]; then
terraform ${action}
 exit
fi

terraform ${action} -auto-approve