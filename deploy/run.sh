helm upgrade --install helm-web ./Web/helm

helm upgrade --install prometheus prometheus-community/kube-prometheus-stack --version 69.4.1 -n kube-system -f ./Prometheus/values.yaml

sh ./Database/deploy_database.sh

helm upgrade --install helm-redis ./Redis

helm upgrade --install helm-tls ./tls-secret-chart

helm upgrade --install helm-rabbitmq ./rabbitmq

helm upgrade --install helm-jobs ./jobs.api

helm upgrade --install helm-identity ./identity.api

helm upgrade --install helm-applicants ./applicants.api