#use the redhat universal base image ubi-8
FROM docker.io/redhat/ubi8

#install apache http server
RUN yum install -y httpd && yum clean all

#copy index.html file into the web server directory
COPY index.html /var/www/html

#set working directory
WORKDIR /var/www/html

#expose port 8000 for the http traffic
EXPOSE 8000

#Run apache http server in the foreground
CMD ["nginx", "-g", "daemon off;"]
