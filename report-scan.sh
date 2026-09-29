#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
	ort \
	--config=/ort/config.yaml \
	--info \
	report \
	--ort-file=/project/ort/scanner/scan-result.yml \
	--output-dir=/project/ort/reporter/scan \
	--report-formats=WebApp
