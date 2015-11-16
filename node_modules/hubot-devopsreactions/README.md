Devops Reactions Hubot Scripts
==============================

[Hubot](http://hubot.github.com/) script to interface with the funny post from devops reactions blog

## Installation

Update Hubot's package.json to install hubot-devopsreactions from npm, and update Hubot's external-scripts.json file to include the hubot-devopsreactions module.

### Update the files to include the hubot-devopsreactions module:

#### package.json
    ...
    "dependencies": {
      "hubot":        ">= 2.4.0 < 3.0.0",
      ...
      "hubot-devopsreactions": ">= 0.1.1"
    },
    ...

#### external-scripts.json
    ["hubot-awesome-module","other-cool-npm-script","hubot-devopsreactions"]

Run `npm install` to install hubot-devopsreactions and dependencies.

## Practical Use

Use `hubot help` or check the devopsreactions.coffee file to get the full list of options with short descriptions. 

    devops me

## TODO

* Retry on error
* Report when service is down