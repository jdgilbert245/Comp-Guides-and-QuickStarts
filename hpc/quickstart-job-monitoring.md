# Job Monitoring and Optimisation
When submitting jobs to the hpc, we have to specify the time, amount of memory and number of cores. We aim to request enough resources that allow the job to run efficiently. However, if we request a large amount of RAM but job uses only a small amount of it, the unused RAM is wasted. Similarly, if we request more cores than our programme can use, the cores are not used and not available for anyone else to use. All of this leads to longer queueing time for everyone.

It is fine to experiment with different resources for a job, especially if it helps you to request the optimal resources in future jobs. You can monitor the performance of your job in a few ways.

**qstat** shows you info about jobs currently running.

**jobhist** shows info about jobs that recently finished.

**/usr/bin/time --verbose** will report more info about a job when it finishes, including `maxrss` (max resident set size) which tells you the largest amount of mem used. E.g. ` /usr/bin/time --verbose myprogram myargs`.

**ruse** gives more detailed info about memory use throughout the job. This script would print resource usage every 120seconds to standard output channel:
```
module load ruse/2.0

# sample the current memory usage every 120s and output each step to stdout
ruse --stdout --time=120 -s myprogram myargs
```

**nodesforjob** will give a live snapshot of job usage: `nodesforjob JOB_NUMBER`. If some nodes are approaching 100%, the job might need more memory. Conversely, if load/memory is low, you might have requested too much memory. If some nodes are near 0% load in a multi-thread job, you might have requested more nodes than your programme can use. 
