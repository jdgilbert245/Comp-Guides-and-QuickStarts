# Compressing and decompressing
Quick examples of compressing dirs and uncompressing (via `unzip`). May be quick to reuse.

## Compressing a directory
```
#!/bin/bash -l
#$ -l h_rt=4:0:0 # time
#$ -l mem=2G # mem
#$ -pe smp 1 # num cores
#$ -j y

DIR=/home/ucsagil/Scratch/projects/training/repos/rnaseq/development

TARget=${DIR}/test-RNASeq-repo

TARout=/rdss/rd01/ritd-ag-project-rd01ve-jgilb71/test-RNASeq-repo.tar.gz

tar -czvf $TARout $TARget 
```
The options:
- c – create a new archive
- z – gzip-compress it
- v – verbose output (list all files as they’re added)
- f – filename to write the archive to (the argument after -f)

## Unzipping a zipped file
```
#!/bin/bash -l
#$ -l h_rt=4:0:0 # time
#$ -l mem=2G # mem
#$ -pe smp 1 # num cores
#$ -j y

DIR=/home/ucsagil/Scratch/projects/training

TARget=${DIR}/X204SC21090267-Z01-F001.zip

TARout=${DIR}/data/naked-mole-rat/rnaseq/reads/

unzip -q "$TARget" -d "$TARout"
```


