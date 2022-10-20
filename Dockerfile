FROM alpine

RUN apk add --no-cache \
        bash           \
        httpie         \
        jq &&          \
        which bash &&  \
        which http &&  \
        which jq

RUN ls -ltra

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN ls -ltra /usr/local/bin/

COPY sample_push_event.json /sample_push_event.json

RUN ls -ltra /

ENTRYPOINT ["entrypoint.sh"]
