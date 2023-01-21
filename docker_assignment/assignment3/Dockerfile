FROM  rahman3593/infracubator:assignment1
RUN apk --update add bash
COPY ./system_capabilities.sh /
RUN chmod +x /system_capabilities.sh
ENTRYPOINT ["bash","/system_capabilities.sh"]
