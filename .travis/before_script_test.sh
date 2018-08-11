#!/usr/bin/env bash
set -ev

vendor/symfony-cmf/testing/bin/console doctrine:phpcr:init:dbal --drop --force
vendor/symfony-cmf/testing/bin/console doctrine:phpcr:repository:init

TESTING_SCRIPTS_DIR=vendor/symfony-cmf/testing/bin
CONSOLE=${TESTING_SCRIPTS_DIR}/console

echo '+++ create PHPCR +++'
${CONSOLE} doctrine:phpcr:init:dbal --drop --force
${CONSOLE} doctrine:phpcr:repository:init
