#run this post install to save terraform state to a project bucket
source env-var

gsutil mb -p $projectid gs://$projectid-tfstate

#pull server config file
gsutil cp gs://$forsetibucket/configs/forseti_conf_server.yaml .
