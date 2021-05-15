while :
do
  is_stuck=`tail -n 20 /home/ubuntu/eth.log |grep "SIGSEGV encountered"`
  dt=`date +"%Y%m%d %H:%M:%S"`
  echo "$dt is_stuck=$is_stuck"
  if [[ ! -z $is_stuck ]]
  then
	echo "$dt restarting..."
	pgrep -f stratums|xargs kill
  fi
  sleep 60
done
