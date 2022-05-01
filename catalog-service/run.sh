docker rm -f catalog-service &&
docker run --network ecommerce-network \
    --name catalog-service \
    -e "SPRING_PROFILES_ACTIVE=default" \
    -e "spring.cloud.config.uri=http://config-server:8888" \
    -e "eureka.client.service-url.defaultZone=http://eureka-server:8761/eureka/" \
    -t paki1019/ecommerce-catalog-service
