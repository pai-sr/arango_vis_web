FROM nginx:latest

RUN apt-get -y update
RUN apt-get -y install vim

RUN mkdir /etc/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY / /etc/nginx

#EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]