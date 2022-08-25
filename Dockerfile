FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
CMD sed -i "s/KUBERNETES_NS/$KUBERNETES_NS/g" /etc/nginx/conf.d/hello.conf ; nginx -g 'daemon off;'
