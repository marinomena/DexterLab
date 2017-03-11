FROM openjdk:latest

RUN mkdir -p /home/dexter/SpringBootWebSerService1/initial/
RUN useradd dexter -d /home/dexter/SpringBootWebSerService1/initial/

ADD target/gs-rest-service-0.1.0.jar /home/dexter/SpringBootWebSerService1/initial/

RUN chown -R dexter. /home/dexter/SpringBootWebSerService1/initial/

USER dexter

WORKDIR /home/dexter/SpringBootWebSerService1/initial/

ENTRYPOINT java -jar gs-rest-service-0.1.0.jar

EXPOSE 8000