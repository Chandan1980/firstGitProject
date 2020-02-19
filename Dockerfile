
FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
EXPOSE 80
RUN rm -rf /var/www/html/index.html
COPY index.html /var/www/html/index.html 
CMD nginx -g 'daemon off;
