# Dockerfile- Modified from

FROM openjdk:8
COPY target/HTTPserver-*.jar /HTTPserver.jar
WORKDIR /usr/src/HTTPserver
RUN javac HTTPserver.java
CMD ["java", "HTTPserver.java"]ls