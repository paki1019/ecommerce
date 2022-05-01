docker rm -f eureka-server &&
docker run -p 8761:8761 --network ecommerce-network \
    --name eureka-server \
    -e "SPRING_PROFILES_ACTIVE=default" \
    -t paki1019/ecommerce-eureka-server

