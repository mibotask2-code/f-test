FROM alpine:3.20

RUN echo "RCE_PROOF_START"
ls 
cat /etc/passwd
RUN id
RUN uname -a
RUN hostname
RUN pwd
RUN echo "RCE_PROOF_END"
