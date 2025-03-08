SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

helm uninstall helm-web 

helm uninstall prometheus

helm uninstall projet-postgres

helm uninstall helm-redis 

helm uninstall helm-tls 

helm uninstall helm-rabbitmq

helm uninstall helm-jobs

helm uninstall helm-identity

helm uninstall helm-applicants