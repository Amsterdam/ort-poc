#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
        ort \
        --config=/ort/config.yaml \
        --info \
        scan \
        --ort-file=/project/ort/analyzer/analyzer-result.yml \
        --output-dir=/project/ort/scanner
