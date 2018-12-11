
# Resouces requested
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:02:00

# Job name and log
#SBATCH --job-name="tensor"
#SBATCH --output=cron.log
#SBATCH --open-mode=append      # Append the output in cron.log

# Cron string daily 5:05am
#SCHEDULE='5 5 * * *'           # for this format you need to write next-cron-time
                                # script that parses a cron schedule string and returns
                                # the next execution time

# Environment
# you can load the required modules in the real job

# Submit your real job that you want to submit periodically
sbatch --quiet tensor-cron.slurm

# Resubmit as scheduled
#sbatch --quiet --begin=$(next-cron-time "$SCHEDULE") cron.sbatch       # use next-cron-time script
sbatch --quiet --begin=12:00 cron.sbatch                                # instantiate the job every day at 12:00am
echo "All Done!"
