#!/usr/bin/env bash

### convert python notebook to report
## note we don't want to show code- just markdown text and what is produced by code cells
DIR=/path/to/notebook/folder
FILE=filename.ipynb

### nbconvert available in python environment: py_convert_nb
## env yaml available on github
conda activate py_convert_nb

### convert notebook to html 
## no input removes content of code cells
jupyter nbconvert --no-input --to html ${DIR}/${FILE} # can be --to pdf or --to html
