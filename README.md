# slack-irc Docker Image

A Docker image for ekmartin's [slack-irc](https://github.com/ekmartin/slack-irc), using environment variables for configuration.

> slack-irc connects Slack and IRC channels by sending messages back and forth. Read more [here](https://ekmartin.com/2015/slack-irc/).

## Installation

Pull [the image](https://hub.docker.com/r/valentine/slackirc-env/) from Docker Hub:

    docker pull valentine/slackirc-env:latest

Create a container using `docker run`:
    
    docker run -d \
      -e NICK=somenick \
      -e SERVER=irc.someserver.org \
      -e TOKEN=xxxx-1111111111-1111111111-1111111111-11xxxx \
      -e SLACKCHAN=#general \
      -e IRCCHAN=#somechannel \
      -e BOTNICK=optional \
      -e BOTPASSWD=optional \
      valentine/slackirc-env:latest
    
The above, in one line:

    docker run -d -e NICK=somenick -e SERVER=irc.someserver.org -e TOKEN=xxxx-1111111111-1111111111-1111111111-11xxxx -e SLACKCHAN=#general -e IRCCHAN=#somechannel -e BOTNICK=optional -e BOTPASSWD=optional valentine/slackirc-env:latest

## Environment Variables
    
**NICK**: Your bot's IRC nickname.

**SERVER**: IRC server your bot connects to.

**TOKEN**: Slack [Web API token](https://api.slack.com/web).

**SLACKCHAN**: Slack channel your bot connects to.

**IRCCHAN**: IRC channel your bot connects to.

**BOTNICK** (optional): Your bot's IRC authentication nickname.

**BOTPASSWD** (optional): Your bot's IRC authentication password.

## Licence

Code licensed under The MIT License (MIT).