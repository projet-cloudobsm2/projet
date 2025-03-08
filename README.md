# projet

## Deployer tout dans le cluster
```bash
./deploy/deploy_all.sh
```

Ce script va installer les release helm nécessaires dans le cluster , vous aurez ensuite accès à l'application via le nginx.


## Auto signed certificate

Le certificat et la clée privée sont stockés dans un secret. Ils seront déployés automatiquement via une release helm

Le certificat sera utilisé ensuite par le nginx.

