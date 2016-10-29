#FROM alpine:latest
FROM scratch

WORKDIR /tmp

COPY build/output/cpu_consumer /usr/bin/cpu_consumer

ENTRYPOINT ["/usr/bin/cpu_consumer"]
CMD [""]
