# slurm-cron
Cron job implementation using SLURM in HPC

Download all the files in a working directory
Submit the job
``` 
sbatch cron.sbatch
```
This is a singularity job. Follow the instructions at [2].
Monitor
```
squeue -u <userID>
```
output:
12265410 batch     tensor         <caseID> CG        0:00        2:00     1   1   2001 compt228
12265412 batch     tensor         <caseID> PD        0:00        2:00     1   1   2001 (BeginTime)
Note that the job is pending (PD - BeginTime ) to run at 12:00 noon next day.

Also, check the next submit time
```
scontrol show job <jobid>
```
output:
```
SubmitTime=2018-12-11T12:00:02 EligibleTime=2018-12-12T12:00:00
StartTime=2018-12-12T12:00:00 EndTime=2018-12-12T12:02:00 Deadline=N/A
```
## References:
1. [UChicago] (https://rcc.uchicago.edu/docs/running-jobs/cron/index.html)
2. [Singularity Tensorflow] (https://github.com/sxg125/singularity)
