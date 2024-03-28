toolName=$1
roleName=$2

ansible-playbook -i ${toolName}.chaithanya.online, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e role_name=${roleName} toolsRoleCall.yaml