FROM rahman3593/infracubator:assignment1
RUN apk add --update bash
COPY ./printvariables.sh /
RUN chmod +x /printvariables.sh
RUN sh /printvariables.sh
ENTRYPOINT ["sh"]
