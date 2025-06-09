
# Use the official OpenJDK image from the Docker Hub
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /usr/src/minecraft

# Download the Minecraft server JAR file
RUN wget -O server.jar https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar

# Expose the default Minecraft port
EXPOSE 25565

# Start the Minecraft server
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
