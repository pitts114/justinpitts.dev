FROM nginx

COPY  ./src /var/www
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
