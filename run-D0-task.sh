#!/bin/bash

config_file=$1

o2-analysis-cf-femtouniverse-pair-track-d0 --configuration json://$config_file --aod-memory-rate-limit 600000000 -b