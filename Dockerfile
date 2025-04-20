FROM nginx:alpine

COPY 404.html /usr/share/nginx/html/index.html

# Optional: Disable logging to make it lighter
RUN sed -i 's/access_log/#access_log/' /etc/nginx/nginx.conf && \
    sed -i 's/error_log/#error_log/' /etc/nginx/nginx.conf

EXPOSE 80
