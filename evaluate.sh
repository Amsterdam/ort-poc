#!/usr/bin/env bash
set -eux

docker compose run \
	--rm \
	ort \
	--config=/ort/config.yaml \
        --info \
	evaluate \
	--package-curations-file=/ort/curations.yaml \
        --rules-file=/ort/evaluator-rules.kts \
        --license-classifications-file=/ort/license-classifications.yaml \
        --ort-file=/project/ort/scanner/scan-result.yml \
        --output-dir=/project/ort/evaluator
