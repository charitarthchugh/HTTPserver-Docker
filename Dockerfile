# Dockerfile- Modified from

FROM openjdk:8
COPY target/HTTPserver-1.0.jar dock/HTTPserver.jar
CMD ["java", "-jar","/HTTPserver.jar"]