helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

kubectl create namespace ingress-nginx
helm install nginx-controller ingress-nginx/ingress-nginx --namespace ingress-nginx

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
helm upgrade --install nginx-ingress "$SCRIPT_DIR/helm"