# Dockerfile- Modified from

FROM openjdk:8
COPY . E:\Projects\HTTPserver-Docker\src\HTTPserver
WORKDIR /usr/src/HTTPserver
RUN javac HTTPserver.java
CMD ["java", "HTTPserver.java"]