toolName=$1

ansible-playbook -i ${toolName}.chaithanya.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=${toolName} toolsRoleCall.yaml