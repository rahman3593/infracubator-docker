FROM alpine:3.17 as base
COPY ./base.sh /

FROM alpine:3.17
ARG Name="AbdulRahman"
ENV env_Name=$Name
RUN apk add --update bash
COPY --from=base /base.sh /derived.sh
RUN chmod +x derived.sh
ENTRYPOINT bash derived.sh $env_Name
