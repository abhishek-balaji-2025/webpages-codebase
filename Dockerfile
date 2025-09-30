# From base image
FROM httpd:latest

# Execute these commands
COPY ./petcare-homepage.html /usr/local/apache2/htdocs/index.html

# EXPOSE port 
EXPOSE 80

# start the service
CMD ["httpd-foreground"]


