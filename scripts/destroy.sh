DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# delete helm charts
helm delete app
helm delete api
helm delete redis
cd $DIR/../helm
./nginx-ingress/delete.sh

# destroy terraform infra
cd $DIR/../terraform
terraform destroy