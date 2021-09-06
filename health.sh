state=$(curl https://ongdev.itradenetwork.net/common/api/actuator/health)

json=($(echo $state | tr '"' '\n' | grep DOWN))
echo $json 

for i in ${json[@]}
do
    if [ $i == "DOWN" ]
	then
		exit 1
	else
		echo "All services are UP !"
	fi
done
