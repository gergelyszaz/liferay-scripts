i=0
GRADLEW="gradlew"
while [ $i -lt 10 ]; do
	i=$[$i+1]
	
	if [ -f $GRADLEW ]; then
	echo "./$GRADLEW"
		./$GRADLEW "$@"
		exit 0
	fi
	
	GRADLEW="../$GRADLEW"
done
echo "gradlew not found"
exit 1