# Description:
#   Carlton Celebration
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   dance - Display a dancing Carlton
#
# Author:
#   pingles

carltons = [
  "http://media.tumblr.com/tumblr_lrzrlymUZA1qbliwr.gif",
  "http://gifsoup.com/webroot/animatedgifs/987761_o.gif",
  "http://gifsoup.com/webroot/animatedgifs/131815_o.gif",
  "https://j.gifs.com/n50G6Y.gif"
]

module.exports = (robot) ->
  robot.hear /\b(dance|happy)\b/i, (msg) ->
    msg.send msg.random carltons
