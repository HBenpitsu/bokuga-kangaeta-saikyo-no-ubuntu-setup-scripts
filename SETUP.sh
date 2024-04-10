OS_SETUP_DIR=$( cd $(dirname ${BASH_SOURCE:-$0}); pwd )
export OS_SETUP_DIR
CURRENT_PHASE=`cat $OS_SETUP_DIR/tasks/current-phase`

if [ "$1" = "" ]; then
	echo [msg] press Enter-key to continue
	read
	chmod +x $OS_SETUP_DIR/tasks/$CURRENT_PHASE/*
	for task in `ls $OS_SETUP_DIR/tasks/$CURRENT_PHASE`; do
		echo === === start: $task === ===
		$OS_SETUP_DIR/tasks/$CURRENT_PHASE/$task
	done
fi

if [ "$1" = "list" ]; then
	for phase in `ls $OS_SETUP_DIR/tasks`; do
	if [ -d $OS_SETUP_DIR/tasks/$phase ] ; then 
	for task in `ls $OS_SETUP_DIR/tasks/$phase`; do
		echo $phase/$task
	done
	fi
	done
fi

if [ "$1" = "exec" ]; then
	chmod +x $OS_SETUP_DIR/tasks/$2
	$OS_SETUP_DIR/tasks/$2
fi

if [ "$1" = "phase" ]; then
	echo $2 > $OS_SETUP_DIR/tasks/current-phase
fi
