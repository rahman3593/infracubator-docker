FROM rahman3593/infracubator:assignment1
RUN apk add --update nodejs npm openjdk8 maven bash
RUN node --version
RUN npm --version
RUN mvn -v
COPY ./arithmetic_operations.sh /
ENTRYPOINT ["bash","/arithmetic_operations.sh"]
