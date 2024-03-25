#!/bin/bash

ConfigFile="./task-config.json"

#o2-analysis-cf-femtouniverse-pair-track-d0 --configuration json://$config_file --aod-memory-rate-limit 600000000 -b
o2-analysis-cf-femtouniverse-pair-track-d0 -b --configuration json://$ConfigFile