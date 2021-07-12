#Install AWS CLI Ubuntu
sudo apt install unzip -y # Install Require Package 
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
sudo unzip awscliv2.zip 
echo "Installing AWS CLI ........................"
sudo ./aws/install

#Install Terraform 
sudo curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main" -y
sudo apt update -y 
echo "Installing Terraform ........................"
sudo apt install terraform -y

#Install Ansible
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y 
echo "Installing Ansible .........................."
sudo apt install ansible -y

#Validation Instalation Using Check Version 
echo "==================================== AWS CLI VERSION ===================================="
aws --version
echo "==================================== TERRAFORM VERSION ===================================="
terraform -version
echo "==================================== ANSIBLE VERSION ===================================="
ansible --version

#Instaling newrelic role 
ansible-galaxy install newrelic.newrelic-infra