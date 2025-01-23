FROM nginx
LABEL maintainer="devops@example.com" description="A sample NGINX image"
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
