#!/bin/sh

echo Generating plots
for f in ~/log/@matplot/plot-*; do
	python3 $f --save --outdir ~/log/@images
done
