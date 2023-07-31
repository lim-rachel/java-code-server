FROM codercom/code-server

# Install Java (AdoptOpenJDK)
ENV JDK_ARCHIVE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz

RUN wget -q -O /tmp/openjdk.tar.gz $JDK_ARCHIVE_URL
RUN tar xzf /tmp/openjdk.tar.gz -C /usr/local --strip-components=1
RUN rm -f /tmp/openjdk.tar.gz

# Expose the code-server port
EXPOSE 8080
