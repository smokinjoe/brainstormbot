# Description:
#   Hubot, give someone a gold star.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   "hubot give <name> a gold star" will give someone a gold star!

module.exports = (robot) ->

  robot.respond /give (.*?) a gold star/i, (msg) ->
    msg.send "http://1.bp.blogspot.com/-_JEuKa6aGk4/Tb7pq6Mha2I/AAAAAAAADT0/V77KKYKIVOY/s400/good%2Bjob.jpg"
    msg.send msg.match[1] + " gets a gold star!"

  robot.respond /at least (.*?) tried/i, (msg) ->
    msg.send "http://i.imgur.com/7DvOfQy.jpg"
    msg.send "There may be *some* shame in trying"