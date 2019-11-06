
gcloud compute routers nats create nat-config \
    --router=nat-router \
    --auto-allocate-nat-external-ips \
    --nat-all-subnet-ip-ranges \
    --enable-logging


./.terraform/modules/forseti-install-simple/$forsetimodulefolder/helpers/setup.sh -p $projectid -o $orgid -e