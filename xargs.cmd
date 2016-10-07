#used to run a list of commands using a set number of processorss on a single node

threads=10
cat commands.txt | xargs -I CMD --max-proc=$threads bash -c CMD
