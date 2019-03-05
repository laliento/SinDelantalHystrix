FROM java:8
VOLUME /tmp
ADD target/SinDelantal-Hystrix-0.0.1-SNAPSHOT.jar SinDelantal-Hystrix.jar
RUN bash -c 'touch /SinDelantal-Hystrix.jar'
ENV JAVA_OPTS=""
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar /SinDelantal-Hystrix.jar"]
MAINTAINER eduardo.cz.mac@gmail.com