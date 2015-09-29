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
practice = [
  'http://i.imgur.com/m4JhTK1.jpg',
  'http://i.imgur.com/6PSdNm0.jpg',
  'http://i.imgur.com/izTIWAy.jpg',
  'http://i.imgur.com/bj10J8p.jpg',
  'http://i.imgur.com/bj10J8p.jpg',
  'http://i.imgur.com/NeZxNHq.jpg',
  'http://i.imgur.com/qm0Nu6X.jpg',
  'http://i.imgur.com/qm0Nu6X.jpg'
]

module.exports = (robot) ->
  robot.hear /disco form\b/i, (res) ->
    res.send "https://circa71.files.wordpress.com/2012/02/discoball3-1.gif"
  robot.hear /practice\b/i, (res) ->
    res.send "Practice?"
    res.send res.random practice