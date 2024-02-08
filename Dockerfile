FROM --platform=linux/amd64 openjdk:17.0.1-jdk-slim
ARG JAR_FILE=build/libs/springboot-on-minikube.jar
WORKDIR /opt/app
COPY ${JAR_FILE} springboot-on-minikube.jar
ENTRYPOINT ["java","-jar","springboot-on-minikube.jar"]
