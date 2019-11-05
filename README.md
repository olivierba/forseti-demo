# install 101

# pre-install
- Create a free sendgrid account from the GCP marketplace, copy the sendgrid API key and save it somewhere safe
- A G-Suite domain for G-suite features
- create a bucket to store the terraform state

# installation

- Init projet variable in env-var from env-var-sample and load them with source env-var
- run terraform init, this will load the dependency and forsetti source which is used for other scripts and the rest of the deployment
- Run script in script-pre this will init the nat gateway for a private ip deployement and provision the accounts and iam permission
- Init terraform.tfvars from terraform.tfvars.sample
- run terraform apply

# post install config
- Create a source id in security command center
- setup all the necessary variable in forseti_conf_server.yaml
    -- API key
    -- emails and domaines
    -- bucket adresses
- upload the file to the server bucket in /configs
- run script-post.sh
- edit backend.tf with the bucket you created for terraform state and uncomment the lines
- run terraform apply
- ssh into the forseti server compute instance
- run /home/ubuntu/forseti-security/install/gcp/scripts/run_forseti.sh to force config reload and a first run

# clean up 
- terraform destroy
- run clean.sh

