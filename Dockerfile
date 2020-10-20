FROM suprajamannam/dockerbuild 

# Install JDK
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Compile our HelloWorld
RUN javac src\WelcomeClassExample.java

ENTRYPOINT JAVA HelloWorld
