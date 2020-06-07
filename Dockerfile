FROM openjdk:8-jdk-alpine
EXPOSE 8761
ADD /datastructure/target/*.jar datastructure.jar
ENTRYPOINT ["java","-jar","datastructure.jar"]