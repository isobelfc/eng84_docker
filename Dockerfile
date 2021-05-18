# we need to use nginx offical image as our base image
# we will use the keyword FROM
# keywords are all caps in Dockerfiles

FROM nginx

LABEL MAINTAINER = isobelfc
# using label is a good practice but optional

COPY app1 /usr/share/nginx/html
# copying our app1 folder from our OS to default index.html location

EXPOSE 80
# EXPOSE is the keyword to expose the required port for the base image

CMD ["nginx", "-g", "daemon off;"]
# CMD will execute the command as it's available in the official image
