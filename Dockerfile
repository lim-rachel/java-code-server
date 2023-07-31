FROM codercom/code-server
USER root
RUN apt-get update -y
RUN apt-get install -y default-jdk
USER 1000
