#!/usr/bin/env bash
set -eux
docker run \
	-it \
	--volume="${1}:/project" \
        --volume="./config.yaml:/ort/config.yaml" \
	--rm \
	ghcr.io/oss-review-toolkit/ort \
	--config=/ort/config.yaml \
	--info \
	analyze \
	--input-dir=/project \
	--output-dir=/project/ort/analyzer
