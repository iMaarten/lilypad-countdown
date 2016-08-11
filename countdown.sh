#!/bin/bash
function countdown
{
        local OLD_IFS="${IFS}"
        IFS=":"
        local ARR=( $1 )
        local SECONDS=$((  (ARR[0] * 60 * 60) + (ARR[1] * 60) + ARR[2]  ))
        local START=$(date +%s)
        local END=$((START + SECONDS))
        local CUR=$START

        while [[ $CUR -lt $END ]]
        do
                CUR=$(date +%s)
                LEFT=$((END-CUR))

                printf "%02d:%02d:%02d" \ $((LEFT/3600)) $(( (LEFT/60)%60)) $((LEFT%60)) > countdown.txt
                printf "Updated countdown.txt to %02d:%02d:%02d\n" \ $((LEFT/3600)) $(( (LEFT/60)%60)) $((LEFT%60))

		timer=`cat countdown.txt`
                sed -i -e "s/\&e\&l .*!/\&e\&l $timer!/g" proxy.yml
        printf "Edited proxy.yml accordingly\n"
		screen -S proxy -p 0 -X stuff 'reload'
        printf "Sent the reload command in screen 'proxy'\n"

                sleep 1
        done
        IFS="${OLD_IFS}"
        echo "        "
}

countdown "24:00:00"
