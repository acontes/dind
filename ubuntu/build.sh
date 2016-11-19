#!/bin/bash

cp ../wrapdocker .
docker build -t dind_ubuntu .
rm wrapdocker
