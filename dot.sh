#!/bin/bash
# Ask the user for DOT Number
echo Enter DOT Number
read dot
# fetch data and put it into a json file
curl https://mobile.fmcsa.dot.gov/qc/services/carriers/"$dot"?webKey=ebef3f068cb2c38b7a07de20385ff03e977964df >> carriers/$dot.json

# open json file in jless
jless carriers/$dot.json