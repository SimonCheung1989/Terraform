FROM store/appdynamics/java:4.5_jdk8-alpine

# RUN apk add nginx &&\
# 	apk add openrc --no-cache

# CMD ["rc-service","nginx","start"]
COPY ./web-demo-0.0.1-SNAPSHOT.jar /web-demo-0.0.1-SNAPSHOT.jar

# CMD ["java", "-jar", "/web-demo-0.0.1-SNAPSHOT.jar"]

CMD ["java", "-javaagent:/opt/appdynamics/javaagent.jar", "-Dappdynamics.controller.hostName=lee201811072338099.saas.appdynamics.com", "-Dappdynamics.controller.port=443", "-Dappdynamics.controller.ssl.enabled=true", "-Dappdynamics.agent.accountName=lee201811072338099", "-Dappdynamics.agent.accountAccessKey=cdcd8jxi2ieh", "-Dappdynamics.agent.applicationName=demoapp", "-Dappdynamics.agent.tierName=tier3", "-Dappdynamics.agent.nodeName=node1", "-jar", "/web-demo-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080