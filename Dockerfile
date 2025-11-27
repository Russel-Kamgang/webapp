FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND=nointeractive apt-get install -y nginx git
EXPOSE 80
# ADD static-website-example /var/www/html
RUN rm -rf /var/www/html/*

RUN git clone https://github.com/cloudacademy/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]
