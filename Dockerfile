# Dockerfile- Modified from

FROM openjdk:8
COPY target/HTTPserver-*.jar dock/HTTPserver.jar

CMD ["java", "-jar","/HTTPserver.jar"]
