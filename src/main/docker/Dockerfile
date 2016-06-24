FROM java:8-jre-alpine
VOLUME /tmp
ADD config-server-1.0.jar app.jar
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /app.jar"]