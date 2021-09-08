FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
# Install.
RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git man unzip vim wget && \
  apt-get install -y default-jre && \
  apt-get install -y default-jdk && \
  git clone https://github.com/medleandrodevops/spring-petclinic && \
  cd spring-petclinic && ./mvnw package && java -jar target/*.jar
  
  