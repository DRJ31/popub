#!/bin/bash -v

docker manifest create dengrenjie31/popub-local \
	dengrenjie31/popub-local:amd64 \
	dengrenjie31/popub-local:aarch64

docker manifest annotate dengrenjie31/popub-local:amd64 \
	--os linux --arch amd64

docker manifest annotate dengrenjie31/popub-local:aarch64 \
	--os linux --arch arm64 --variant v8

docker manifest push dengrenjie31/popub-local

docker manifest create dengrenjie31/popub-relay \
	dengrenjie31/popub-relay:amd64 \
	dengrenjie31/popub-relay:aarch64

docker manifest annotate dengrenjie31/popub-relay:amd64 \
	--os linux --arch amd64

docker manifest annotate dengrenjie31/popub-relay:aarch64 \
	--os linux --arch arm64 --variant v8

docker manifest push dengrenjie31/popub-relay