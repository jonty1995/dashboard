FROM adoptopenjdk:latest
EXPOSE 8080
ADD target/dashboard.jar dashboard
ENTRYPOINT ["java","-jar","dashboard"]