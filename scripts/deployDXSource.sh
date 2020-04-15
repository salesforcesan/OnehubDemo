#!/bin/bash

rm -rf ./outputdir/ # If manifest directory exists delete it

mkdir ./outputdir/ # Create a New Manifest Directory

sfdx force:mdapi:convert -r ./manifest -d ./outputdir #Convert Source from mdapi to the DX format and push to default

sfdx force:mdapi:deploy -u salesforce.san@gmail.com -w 10 -d path/of/outputdir #Deploy the source using mdapi deploy command