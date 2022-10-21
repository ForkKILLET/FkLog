#!/bin/sh

echo Generating plots
for f in @matplot/plot-*; do
	python3 $f --save --outdir ./@images
done
