terraform plan -out=tfplan.tfplan
terraform-validator-linux-amd64 validate tfplan.tfplan --policy-path=~/policy-library