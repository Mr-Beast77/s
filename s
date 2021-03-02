#!/bin/bash
sudo apt -qq install tmate > /dev/null 2>&1
#sleep 160
tmate -S /tmp/tmate.sock new-session -d               # Launch tmate in a headless mode
tmate -S /tmp/tmate.sock wait tmate-ready             # Blocks until the SSH connection is established

ok(){
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'    # Prints the SSH connection string
}

ppp(){
	echo git
}

tg () 
{ 
    bot_api=1336436573:AAFpaGsPLEc90A9LBObk6kSXDvjrySmQH14
    your_telegram_id=$1
    msg=$2
    curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" --data "text=$msg&chat_id=${your_telegram_id}"
}
id=571213272
msg=$(ok | awk '{print $2}')
tg $id $msg
sleep 6h
echo ok
