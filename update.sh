#!/usr/bin/env bash

set -e

cd service && git pull
cd kernel && git pull && cd ../external_modules
cd context && git pull && cd ..
cd journal && git pull && cd ..
cd preprocessor && git pull && cd ..
cd postprocessor && git pull && cd ../../..
cd widget && git pull && cd ..
cd engine && git pull && cd ..
