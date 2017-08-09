# config-server

Centralized server for apps settings (Spring Cloud Config)

The application should run after the following command line:

	mvn package

	java -jar target/config-server-1.0.jar

or

    mvn spring-boot:run

Then, open a browser and type:

    http://localhost:8888/info

The following environment variables are available:

PORT - defaults to 8888

GIT_REPO - defaults to https://github.com/thbono/apps-config.git