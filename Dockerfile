FROM nginx

COPY ./public /var/www/web

COPY nginx.conf /etc/nginx/nginx.conf
