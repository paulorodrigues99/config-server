FROM openjdk:8-jdk-alpine
RUN apk add --update curl && rm -rf /var/cache/apk/*
VOLUME /tmp
ADD target/*.jar app.jar
ENV JAVA_OPTS="-Xmx128m"
HEALTHCHECK --start-period=60s CMD curl --fail "http://localhost:${PORT:-8888}${CONTEXT_PATH:-/}${HEALTH_URI:-application-default.yml}" || exit 1
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]