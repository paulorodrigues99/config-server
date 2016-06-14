FROM java:8-jre-alpine
VOLUME /tmp
ADD config-server-1.0.jar app.jar
ENTRYPOINT ["java","-Xmx64m","-jar","/app.jar"]