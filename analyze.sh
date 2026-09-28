#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
	ort \
	--config=/ort/config.yaml \
	--info \
	analyze \
	--input-dir=/project \
	--output-dir=/project/ort/analyzer
