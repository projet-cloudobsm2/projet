# projet

## Deployer tout dans le cluster
```bash
./deploy/deploy_all.sh
```

Ce script va installer les release helm nécessaires dans le cluster , vous aurez ensuite accès à l'application via le nginx.

## Ajouter le host

Le nginx est configuré pour utiliser le host *cloudobsm2.com*

Il faut le rajouter dans le fichier ```/etc/hosts``` (sous linux) / ```C:\Windows\System32\drivers\etc\hosts``` (sous Windows)
```bash
ip_de_votre_cluster cloudobsm2.com
```

## Auto signed certificate

Le certificat et la clée privée sont stockés dans un secret. Ils seront déployés automatiquement via une release helm

Le certificat sera utilisé ensuite par le nginx.

