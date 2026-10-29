FROM nginx:alpine
ARG RELEASE=dev
COPY index.html /usr/share/nginx/html/index.html
RUN sed -i "s/__RELEASE__/${RELEASE}/" /usr/share/nginx/html/index.html
EXPOSE 80