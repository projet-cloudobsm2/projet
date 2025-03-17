mkdir -p pki/root
mkdir -p pki/inter
mkdir -p pki/nginx

NginxDomainName="nginx.${DOMAIN_NAME}"

cat > ./pki/root/root-ca.json <<EOF
{
"CN": "DevOps Machine Root CA",
"key": {
"algo": "rsa",
"size": 4096
},
"names": [{
"C": "FR",
"L": "Paris",
"O": "DevOps"
}],
"ca": {
"expiry": "87600h"
}
}
EOF

cat > ./pki/inter/inter.json <<EOF
{
"CN": "DevOps Intermediate CA",
"key": {
"algo": "rsa",
"size": 4096
},
"ca": {
"expiry": "87600h"
}
}
EOF

cat > ./pki/inter/inter-sign.json <<EOF
{
"signing": {
"default": {
"expiry": "87600h",
"usages": [
"signing",
"cert sign",
"crl sign"
],
"ca_constraint": {
"is_ca": true
}
}
}
}
EOF

cat > ./pki/nginx/certif.json <<EOF
{
"CN": "${NginxDomainName}",
"hosts": [
"${NginxDomainName}",
"${HOST_IP}",
"127.0.0.1",
"localhost"
],
"key": {
"algo": "rsa",
"size": 4096
}
}
EOF

cat > ./pki/nginx/certif-signed.json <<EOF
{
"signing": {
"default": {
"expiry": "87600h",
"usages": ["key encipherment", "server auth", "digital signature", "non repudiation"]
}
}
}
EOF

cfssl gencert -initca pki/root/root-ca.json | cfssljson -bare pki/root/root-ca