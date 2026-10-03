FROM alpine:3.20

RUN echo $HOST > /tmp/agent-proof

RUN cat /tmp/agent-proof
