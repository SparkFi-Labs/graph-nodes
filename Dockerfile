FROM nginx:stable-alpine
COPY default.conf /etc/nginx/conf.d
COPY index.html /app/static/index.html
COPY sparkfi.crt /certs/sparkfi.crt
COPY sparkfi.key /certs/sparkfi.key
EXPOSE 80/tcp
EXPOSE 443/tcp
ENTRYPOINT ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]
WORKDIR /usr/share/nginx/html
