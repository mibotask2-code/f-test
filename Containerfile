FROM alpine:3.20

RUN printf 'AIVEN_AGENT_BUILD_PROOF\n' > /tmp/agent-proof

RUN cat /tmp/agent-proof
