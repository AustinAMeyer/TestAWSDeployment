echo "[all]" > inventory

aws ec2 describe-instances \
--query 'Reservations[*].Instances[*].PublicIpAddress' \
--filters "Name=tag:Project,Values=udacity" \
--output text >> inventory

#mkdir /Users/austinmeyer/Documents/AWS/Ansible/second\ Playbook/roles
#mkdir /Users/austinmeyer/Documents/AWS/Ansible/second\ Playbook/roles/setup
#mkdir /Users/austinmeyer/Documents/AWS/Ansible/second\ Playbook/roles/setup/files