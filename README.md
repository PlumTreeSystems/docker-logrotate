# Docker containers log rotator for kubernetes
This simple tool was created to rotate docker container log files in kubernetes,
because by default rotation do not happen and after awhile log file size might 
increase significally not allowing you to schedule storage anymore.

It works as daemonset to cover all possible nodes, mounts '/var/lib/docker/containers' directory
launch simple log-cleanup.sh script and rotates logs.

# Installation

```
cd helm
helm install -n [namespace] [name] .
```

# Logs are being rotated by default once every Tuesday (can be changed in values.yaml file)
Logs by default are being rotated once every Tuesday, but you can easily change that in 
helm values file by providing casual cron expression.
For example: 
0 7 * * 2 - it means it will be executed every Tuesday at 7AM

# MUST KNOW
This is for self-managed kubernetes instances.
It was NOT tested on AWS / Azure / GCloud etc