# Getting started with nextflow
Nextflow offers a lot of promising advantages for efficiency and reproducibility. At the same time, it has a significant learning curve and can be problematic for HPC staff. It would be good to have a play and see if I can get some simple pipelines running. Then can decide how to introduce to my research and support.

## Installing nextflow
UCL doesn't have a nextflow install on myriad. There is a [config file available](https://github.com/nf-core/configs/blob/master/docs/ucl_myriad.md), which uses singularity rather than docker.

I installed nextflow following instructions in the config repo.

You can update nextflow any time with `nextflow self-update`

to run nextflow, first load java: `module load java/temurin-17/17.0.2_8` and make sure nextflow is in your `$PATH` variable.

## The demo
Nextflow and nf-core require the correct setup. I tested my install following the demo at the top of [this page](https://training.nextflow.io/2.1.3/side_quests/nf-core/). To my surprise, it worked with just:
```
nextflow pull nf-core/demo
nextflow run nf-core/demo -profile singularity,test --outdir results # note this is singularity not the default docker profile
```

## The test
The next step is to run the test version of a nextflow pipeline.

[You should ](https://github.com/nf-core/configs/blob/master/docs/ucl_myriad.md)be able to run the test version of a pipeline easily using:
`nextflow run nf-core/your-pipeline -profile test,ucl_myriad --outdir your/output/directory`

So I tried: `nextflow run nf-core/rnaseq -profile test,ucl_myriad --outdir results-rnaseq-test`

Error:
`Project nf-core/rnaseq is currently stuck on revision: 3.18.0 -- you need to explicitly specify a revision with the option -r in order to use it`

Added to the command: `nextflow run nf-core/rnaseq -profile test,ucl_myriad \
 --outdir results-rnaseq-test -r 3.21.0`. 3.21.0 is latest as of 17/11/2025

And it also worked!

 


