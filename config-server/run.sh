docker rm -f config-server &&
docker run -p 8888:8888 --network ecommerce-network \
    --name config-server \
    -e "spring.profiles.active=default" \
    -t paki1019/ecommerce-config-server
