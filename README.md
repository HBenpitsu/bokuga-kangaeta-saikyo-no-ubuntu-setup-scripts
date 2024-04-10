each scripts will be executed in order.
tasks are split into some phases to load resources by rebooting the computer

first, do `chmod +x ./SETUP.sh`

`./SETUP.sh list` lists up all task scripts
`./SETUP.sh exec` executes a single task script
`./SETUP.sh` starts the whole setup process.

basically there are 3 phases. and computer will be rebooted twice during this process.
that means,

./SETUP.sh->[phase1]->reboot->[phase2]->reboot->[phase3]->done

information about phase is stored in `./tasks/current-phase`

sources which will be installed are stored in `./src/`
I.O.W. scripts in tasks will use resource in `./src/`

for detail, read each scripts.
