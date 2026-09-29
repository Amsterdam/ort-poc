#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
	ort \
	--config=/ort/config.yaml \
	--info \
	report \
	--ort-file=/project/ort/evaluator/evaluation-result.yml \
	--output-dir=/project/ort/reporter/evaluation \
	--report-formats=WebApp,CycloneDX,SpdxDocument
