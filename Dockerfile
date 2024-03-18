FROM openjdk:17-jdk

WORKDIR /app

ARG NEXUS_URL=http://host.docker.internal:8082/service/rest/repository/browse/nexus-release/com/danilo/springboot-jenkins-docker/0.0.1

ARG JAR_FILE=springboot-jenkins-docker-0.0.1.jar

RUN curl -L -X GET 'http://host.docker.internal:8082/service/rest/v1/search/assets/download?sort=version&repository=nexus-release&group=com.danilo&name=springboot-jenkins-docker&maven.baseVersion=0.0.1' --output springboot-jenkins-docker-0.0.1.jar