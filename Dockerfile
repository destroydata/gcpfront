FROM nginx
RUN ["rm" ,"-rf", "/usr/share/nginx/html/*"]
COPY ./build/* /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/p.conf
EXPOSE 3000

# docker build -t front .
# docker stop front
# docker rm front
# docker run -p 80:3000 --name front -d front