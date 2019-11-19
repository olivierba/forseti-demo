gcloud compute networks create forsetinet --description "a network for our demo" --bgp-routing-mode=global


gcloud compute firewall-rules create default-allow-icmp-ssh --network forsetinet --allow tcp:22,icmp --direction=INGRESS --priority=65534 --source-ranges=0.0.0.0/0
gcloud compute firewall-rules create default-allow-internal-2 --network forsetinet --allow tcp:0-65535,udp:0-65535,icmp --direction=INGRESS --priority=65534 --source-ranges=10.128.0.0/9

gcloud compute routers create nat-router --network=forsetinet --region="europe-west1" --advertisement-mode=DEFAULT

gcloud compute routers nats create nat-config \
    --router=nat-router \
    --auto-allocate-nat-external-ips \
    --nat-all-subnet-ip-ranges \
    --enable-logging


./.terraform/modules/forseti-install-simple/$forsetimodulefolder/helpers/setup.sh -p $projectid -o $orgid -e