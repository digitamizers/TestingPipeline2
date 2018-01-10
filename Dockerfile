FROM maven:3.5.2-jdk-8

COPY . /usr/src/app

EXPOSE 80

RUN mvn compile
RUN mvn package

CMD ["java", "-jar", "target/gs-rest-service-0.1.0.jar"]
