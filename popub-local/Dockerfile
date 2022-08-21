FROM alpine

COPY ./popub-local /
RUN apk add --no-cache gcompat ca-certificates

ENTRYPOINT /popub-local $0 $@

