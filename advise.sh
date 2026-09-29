#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
	ort \
	--config=/ort/config.yaml \
        --info \
	advise \
	--ort-file=/project/ort/analyzer/analyzer-result.yml \
	--output-dir=/project/ort/advisor \
	--advisors=OSV
