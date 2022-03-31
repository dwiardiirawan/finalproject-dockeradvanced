FROM nginx:1.15.6
COPY ./myweb-app/nginx.conf /etc/nginx/nginx.conf
HEALTHCHECK CMD curl -f http://localhost/ || exit 0
