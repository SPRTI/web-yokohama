# Imagen mínima de Nginx
FROM nginx:alpine

# Activa gzip y cache estática (opcional pero recomendado)
RUN apk add --no-cache bash && \
    sed -i 's/keepalive_timeout\s\+65/keepalive_timeout 15/' /etc/nginx/nginx.conf

# Copiamos una conf de servidor propia
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copiamos tu sitio al docroot
COPY . /usr/share/nginx/html

# Nginx expone 80
EXPOSE 80
