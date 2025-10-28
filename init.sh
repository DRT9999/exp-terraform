terraform init -backend-config=env-dev/state.tfvars
terraform plan -var-file=env-dev/main.tfvars #ssh_pwd="AES:dT32hCnvveJA2n0MFS/O9w==:yIrj6vXbBFzJHR7qOMNt/w==" #-var vault_token=${vault_token} -var ssh_pwd=${ssh_pwd}
terraform ${action} -auto-approve #ssh_pwd=${ssh_pwd} #-var-file=env-${env}/main.tfvars -var vault_token=${vault_token} -var ssh_pwd=${ssh_pwd}