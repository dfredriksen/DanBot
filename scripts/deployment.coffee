basepath = process.env.HUBOT_DIR

module.exports = (robot) ->

  robot.respond /Deploy ToGo! (.*)/i, (res) ->

    environment = res.match[1]
    user = res.message.user.name

    if environment is "Staging"
      if user is "tony_stark" or user is "tahauygun"
        res.reply "Deploying code to staging environment."
        command = "#{basepath}scripts/staging_deployment.sh"

        @exec = require("child_process").exec
        @exec command, (error, stdout, stderr) ->
          res.send error
          res.send stdout
          res.send stderr
      else
        res.reply "You do not have permission to deploy to that environment"

    else if environment is "Production"
      if user is "tony_stark"
        res.reply "Deploying code to production evironment."
        command = "#{basepath}scripts/production_deployment.sh"

        @exec = require("child_process").exec
        @exec command, (error,stdout,stderr) ->
          res.send error
          res.send stdout
          res.send stderr
      else
        res.reply "You do not have permission to deploy to that environment"

    else
      res.reply "You need to specify a valid environment"
