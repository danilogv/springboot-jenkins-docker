FROM openjdk:17-jdk

WORKDIR /app

RUN curl -L -X GET 'http://host.docker.internal:8082/service/rest/v1/search/assets/download?sort=version&repository=nexus-release&group=com.danilo&name=springboot-jenkins-docker&maven.baseVersion=0.0.5' --output springboot-jenkins-docker.jar

CMD ["java", "-jar", "-Dspring.profiles.active=k8s", "springboot-jenkins-docker.jar"]
