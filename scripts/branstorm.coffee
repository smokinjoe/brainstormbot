# Description:
#   Hi, I'm Branstorm.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   We like to have fun here.

module.exports = (robot) ->
  robot.hear /disco form\b/i, (res) ->
    res.send "https://circa71.files.wordpress.com/2012/02/discoball3-1.gif"