FROM openjdk:8-jre-alpine
ARG processName
VOLUME /tmp
COPY ./target/libraryconsumer-1.0-jar-with-dependencies.jar /libraryconsumer/app.jar
WORKDIR /libraryconsumer
ENV cmd="/usr/bin/java -Xmx400m -Xms400m -cp app.jar com.library.Runner ${processName}"
CMD $cmd
