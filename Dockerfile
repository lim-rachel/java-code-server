# Stage 1: Download JDK archive on your local machine
FROM alpine as downloader
ENV JDK_ARCHIVE_URL=https://github.com/AdoptOpenJDK/openjdk11-upstream-binaries/releases/download/jdk-11.0.12%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz
WORKDIR /downloads
RUN wget -q $JDK_ARCHIVE_URL -O jdk.tar.gz

# Stage 2: Build the final image
FROM codercom/code-server
COPY --from=downloader /downloads/jdk.tar.gz /tmp/
RUN tar xzf /tmp/jdk.tar.gz -C /usr/local --strip-components=1
RUN rm -f /tmp/jdk.tar.gz

# Expose the code-server port
EXPOSE 8080
