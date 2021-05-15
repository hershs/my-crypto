INSTANCE_ID=$(curl http://169.254.169.254/latest/meta-data/instance-id)
while :
do
  dt=`date +"%Y%m%d %H:%M:%S"`
  echo "$dt restarting"
  echo "SCREEN WINDOW DONT KILL!"
  echo "$dt restarting" >> eth.log 2>&1
  /home/ubuntu/bin/ethminer -G \
	-P stratums://0x929058839a423aeb69841a79bf9b313c725b267d.${INSTANCE_ID}@us1.ethermine.org:5555  \
	-P stratums://0x929058839a423aeb69841a79bf9b313c725b267d.${INSTANCE_ID}@us2.ethermine.org:5555  \
	-P stratums://0x929058839a423aeb69841a79bf9b313c725b267d.${INSTANCE_ID}@eu1.ethermine.org:5555  \
	-P stratums://0x929058839a423aeb69841a79bf9b313c725b267d.${INSTANCE_ID}@asia1.ethermine.org:5555  \
	>> eth.log 2>&1
done