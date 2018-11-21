#!/bin/bash

# Start chrome
chromedriver --url-base=/wd/hub 2> /dev/null &

# Start node
node server.js

