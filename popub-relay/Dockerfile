FROM alpine

COPY ./popub-relay /
RUN apk add --no-cache gcompat ca-certificates

ENTRYPOINT /popub-relay $0 $@

