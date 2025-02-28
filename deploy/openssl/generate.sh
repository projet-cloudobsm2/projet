openssl genpkey -algorithm RSA -out private.key -aes256
openssl req -new -key private.key -out request.csr
openssl x509 -req -days 365 -in request.csr -signkey private.key -out certificate.crt