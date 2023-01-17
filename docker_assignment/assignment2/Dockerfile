FROM alpine:3.17

ARG MAVEN_VERSION=3.6.3
ARG USER_HOME_DIR="/root"
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries
RUN apk --update --no-cache add openjdk7 curl
RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
 && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
 && rm -f /tmp/apache-maven.tar.gz \
 && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/default-jvm/
RUN apk --update add nodejs npm
RUN node --version
RUN apk --update add bash
COPY ./arithmetic_operations.sh /
RUN chmod +x /arithmetic_operations.sh
ENTRYPOINT ["bash","/arithmetic_operations.sh"]
