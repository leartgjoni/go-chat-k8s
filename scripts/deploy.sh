DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# terraform
cd $DIR/../terraform
terraform init
terraform apply

# kubectl config
aws eks --region us-east-2 update-kubeconfig --name go-chat-cluster

# install helm charts
cd $DIR/../helm
helm install redis ./redis/
helm install app ./app/
helm install api ./api/
./nginx-ingress/install.sh