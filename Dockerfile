FROM nginx:alpine

RUN apk add --no-cache bash

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY htdocs /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
