# Data Transfer Quickstart Guide
Quickstart guide for transferring data to or from UCL's clusters.

## RDSS
UCL's Research Data Storage Service is the preferred location for storing data. Data can be uploaded to RDSS and can be accessed by UCL's HPC clusters (the RDSS is mounted on the clusters). Note, the login nodes can access the data but the compute nodes (i.e. the nodes you use when submitting job scripts) can't access RDSS. You first need to copy the data to your scratch space or the ACFS file system.

### Windows
To transfer data from your Windows machine to the RDSS, follow [this guide](https://www.ucl.ac.uk/advanced-research-computing/how-access-research-data-storage-service-using-winscp-2024). 

### Mac 

### Command Line
To transfer data to/from HPCs using command line code, `rsync` is often recommended. `rsync` can safely repeat transfers that fail.

Always verify downloads are successful using e.g. [md5sum checks](https://github.com/jdgilbert245/Comp-Guides-and-QuickStarts/blob/main/hpc/quickstart-md5check.md).

## To/From Other Remote Location
