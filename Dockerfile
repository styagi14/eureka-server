FROM openjdk:11
RUN apk add curl
EXPOSE 8761
ADD target/eureka-server.jar eureka-server.jar
ENTRYPOINT ["java", "-jar", "/eureka-server.jar"]