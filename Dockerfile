FROM java:8
COPY src /home/ubuntu/javahelloworld/src
WORKDIR /home/ubuntu/javahelloworld
RUN mkdir bin
RUN javac -d bin  src/HelloWorld.java
ENV FOO bar
RUN apt-get install -y wget
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
