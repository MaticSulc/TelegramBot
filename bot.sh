#THIS WILL SEND A RANDOM LINE FROM THE TEXT FILE TO THE BOT!
#!/bin/bash
CHATID=(insert your chat ID)
KEY=(insert your BOT key from BotFather)
URL="https://api.telegram.org/bot$KEY/sendMessage"
TEXT=$(head -$((${RANDOM} % `wc -l < filename.txt` + 1)) filename.txt | tail -1)
curl -s -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT" $URL >/dev/n
