# Use openjdk base image
FROM openjdk:23

# Set the working directory to /app
WORKDIR /app

# Copy the HelloWorld.java file from the src directory into the container's /app directory
COPY src/HelloWorld.java .

# Compile the Java file inside the container
RUN javac HelloWorld.java

# Set the default command to run the Java program
CMD ["java", "HelloWorld"]
