rm tfplan.tfplan
rm tfplan.json
terraform plan -out=tfplan.tfplan
terraform show -json tfplan.tfplan > tfplan.json
./terraform-validator-linux-amd64 validate tfplan.json --policy-path=/home/olivier/policy-library --project orbital-signal-243013