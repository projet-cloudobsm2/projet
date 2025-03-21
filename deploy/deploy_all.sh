SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

helm upgrade --install helm-web "$SCRIPT_DIR/Web/helm"

helm upgrade --install prometheus prometheus-community/kube-prometheus-stack --version 69.4.1 -n kube-system -f "$SCRIPT_DIR/Prometheus/values.yaml"

sh "$SCRIPT_DIR/Database/deploy_database.sh"

helm upgrade --install helm-redis "$SCRIPT_DIR/redis"

sh "$SCRIPT_DIR/tls-secret-chart/create_tls_secret.sh"

helm upgrade --install helm-rabbitmq "$SCRIPT_DIR/rabbitmq"

helm upgrade --install helm-jobs "$SCRIPT_DIR/jobs.api"

helm upgrade --install helm-identity "$SCRIPT_DIR/identity.api"

helm upgrade --install helm-applicants "$SCRIPT_DIR/applicants.api"

helm upgrade --install elasticsearch  "$SCRIPT_DIR/elasticsearch"

helm upgrade --install fluentd "$SCRIPT_DIR//fluentd" --namespace kube-system

helm upgrade --install kibanac "$SCRIPT_DIR//kibana"

sh "$SCRIPT_DIR/Nginx/install_nginx_controller.sh"
