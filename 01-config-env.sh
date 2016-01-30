#!/usr/bin/with-contenv /bin/sh
if grep -q -e $NICK -e $SERVER -e $TOKEN -e $SLACKCHAN -e $IRCCHAN /slack-irc/config.json
then
	s6-echo "Starting Slack-IRC!"
else
	sed -i 's/ENV-NICK/'"$NICK"'/g' /slack-irc/config.json
	sed -i 's/ENV-SERVER/'"$SERVER"'/g' /slack-irc/config.json
	sed -i 's/ENV-TOKEN/'"$TOKEN"'/g' /slack-irc/config.json
	sed -i 's/ENV-SLACKCHAN/'"$SLACKCHAN"'/g' /slack-irc/config.json
	sed -i 's/ENV-IRCCHAN/'"$IRCCHAN"'/g' /slack-irc/config.json
	sed -i 's/ENV-BOTNICK/'"$BOTNICK"'/g' /slack-irc/config.json
	sed -i 's/ENV-BOTPASSWD/'"$BOTPASSWD"'/g' /slack-irc/config.json
	s6-echo "Starting Slack-IRC for the first time!"
fi