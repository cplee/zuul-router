FROM java:8
MAINTAINER Casey Lee "casey.lee@stelligent.com"
ADD build/libs/zuul-router.jar app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
EXPOSE 8080
