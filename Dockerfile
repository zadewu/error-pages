FROM lipanski/docker-static-website:latest

COPY index.html .

CMD ["/busybox", "httpd", "-f", "-v", "-p", "3000"]
