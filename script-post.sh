#run this post install to save terraform state to a project bucket
source env

gsutil mb -p {{project_id}} gs://{{project_id}}-tfstate
