FROM nginx
EXPOSE 3000
CMD ["/bin/sh", "-c", "sed -i 's/listen  .*/listen 3000;/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
COPY index.html /usr/share/nginx/html/
COPY index_files /usr/share/nginx/html/index_files
