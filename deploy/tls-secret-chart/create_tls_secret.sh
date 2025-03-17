helm repo add jetstack https://charts.jetstack.io
helm repo update

helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.17.0 --set installCRDs=true


SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
helm upgrade --install helm-tls "$SCRIPT_DIR/helm/" # Install the auto-signed certificate
