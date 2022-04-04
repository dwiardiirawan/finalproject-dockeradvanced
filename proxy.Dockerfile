FROM nginx:1.15.6
RUN rm /etc/nginx/conf.d/default.conf
COPY ./myweb-app/nginx.conf /etc/nginx/nginx.conf
HEALTHCHECK CMD curl -f http://localhost/ || exit 1
