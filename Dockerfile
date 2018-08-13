FROM openjdk:8u171-jre-slim-stretch

COPY ./*.jar /home/gcp-metadata.jar

COPY ./application.properties /home/application.properties

WORKDIR /home/


#RUN "chmod 777 /home/ubuntu/application.properties"

EXPOSE 80

CMD ["java","-jar","gcp-metadata.jar"]
