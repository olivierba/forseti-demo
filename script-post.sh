#run this post install to save terraform state to a project bucket
source env-var

gsutil mb -p $projectid gs://$projectid-tfstate

#pull server config file
gsutil mb -p $projectid gs://${forseti-bucket}/configs/forseti_conf_server.yaml
