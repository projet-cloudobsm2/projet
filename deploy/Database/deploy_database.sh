kubectl create secret docker-registry regcred --docker-server=index.docker.io --docker-username=projetcloudobsm2 --docker-password=dckr_pat_iOX5oyuSnSRTXJk2ThUcIaYnT_A
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
helm upgrade --install projet-postgres "$SCRIPT_DIR/helm/"
