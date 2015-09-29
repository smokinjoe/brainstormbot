# Description:
#   Brainstormbot, we need to talk...
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   retro form and retrospective form are trigger words for the form url

url = process.env.ELLUCIAN_RETROSPECTIVE_URL || 'http://asdf.com/'
sendMessage = (res) ->
  for i in [0...5]
    res.send url

module.exports = (robot) ->
  robot.hear /retrospective form\b/i, sendMessage
  robot.hear /retro form\b/i, sendMessage
  robot.hear /what was that retrospective form url?/i, sendMessage


