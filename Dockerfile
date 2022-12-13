FROM nginx

COPY  ./src /var/www
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
