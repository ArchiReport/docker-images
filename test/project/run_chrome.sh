#!/usr/bin/env bash

set -xe

katalon_opts='-browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/TS_RegressionTest"'

docker run -t --rm -e KATALON_OPTS="$katalon_opts" -v "$(pwd)":/katalon/katalon/source katalon-katalon katalon-execute