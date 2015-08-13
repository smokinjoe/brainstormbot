# Description:
#   Brainstormbot, let's form some teams
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "hubot <names> want to play" will form teams with the names

module.exports = (robot) ->

  robot.respond /(.*?) want to play/i, (msg) ->
    tmp = msg.match[1].split /,/
    http msg, 'http://localhost:3000/api/v1/form_teams', tmp, (response) ->
      msg.send response


http = (msg, url, obj, cb) ->
	msg.http(url)
    .query(players: obj)
    .get() cb