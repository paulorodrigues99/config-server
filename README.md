# config-server

Centralized server for apps settings (Spring Cloud Config)

The application should run after the following command line:

	mvn package

	java -jar target/config-server.jar

or

    mvn spring-boot:run

Then, open a browser and type:

    http://localhost:8888/actuator/info

The following environment variables are available:

PORT - defaults to 8888

CONTEXT_PATH - defaults to /

HEALTH_URI - defaults to application-default.yml

GIT_REPO - defaults to https://github.com/thbono/apps-config.git

GIT_USER / GIT_PASSWORD - defaults to empty string

JAVA_OPTS - defaults to -Xmx128m