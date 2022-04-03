VPATH="/home/crt/Videos"
# Loop through each file randomly
while true; do
    if ps ax | grep -v grep | grep omxplayer > /dev/null
    then
        sleep 1;
    else
        i=0
        rand=$[$RANDOM%77+1]
        for entry in $VPATH/*
        do
            if [[ $rand -eq $i ]]
            then
                clear
                omxplayer -r $entry > /dev/null
            fi
            ((i++))
        done
    fi
done
