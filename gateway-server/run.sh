docker rm -f gateway-server &&
docker run -p 8000:8000 --network ecommerce-network \
    --name gateway-server \
    -e "SPRING_PROFILES_ACTIVE=default" \
    -e "spring.cloud.config.uri=http://config-server:8888" \
    -e "spring.cloud.config.name=gateway-server" \
    -e "eureka.client.service-url.defaultZone=http://eureka-server:8761/eureka/" \
    -t paki1019/ecommerce-gateway-server

