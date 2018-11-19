FROM store/appdynamics/java:4.4_jdk8-alpine

# RUN apk add nginx &&\
# 	apk add openrc --no-cache

# CMD ["rc-service","nginx","start"]
COPY ./web-demo-0.0.1-SNAPSHOT.jar /web-demo-0.0.1-SNAPSHOT.jar

# CMD ["java", "-jar", "/web-demo-0.0.1-SNAPSHOT.jar"]

CMD ["java", "-javaagent:/opt/appdynamics/javaagent.jar", "-jar", "/web-demo-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080