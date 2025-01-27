# Use a base image with Java installed
FROM amazoncorretto:17

# Specify the location of the JAR file
ARG JAR_FILE=target/pets-1.0.0-SNAPSHOT.jar

# Copy the JAR file into the Docker image
COPY ${JAR_FILE} app.jar

# Set the command to run the JAR
ENTRYPOINT ["java", "-jar", "/app.jar"]
