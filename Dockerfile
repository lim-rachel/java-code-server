FROM codercom/code-server

# Install Java (AdoptOpenJDK)
#RUN apt-get update && apt-get install -y curl
RUN curl -L -o /tmp/openjdk.tar.gz https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
RUN tar xzf /tmp/openjdk.tar.gz -C /usr/local --strip-components=1
RUN rm -f /tmp/openjdk.tar.gz

# Expose the code-server port
EXPOSE 8080
