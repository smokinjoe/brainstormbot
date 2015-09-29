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
  # Disco ball!
  robot.hear /disco form\b/i, (res) ->
    res.send "https://circa71.files.wordpress.com/2012/02/discoball3-1.gif"
  # Disco Inferno!!
  robot.hear /disco inferno\b/i, (res) ->
    res.send "Did someone say, DISCO INFERNO?"
    res.send "http://i.imgur.com/ac98Olx.jpg"
    res.send "https://www.youtube.com/watch?v=A_sY2rjxq6M"
  # Random AI pics
  robot.hear /practice\b/i, (res) ->
    res.send "Practice?"
    res.send res.random practice
  # Local Man Ruins Everything picture
  robot.hear /you're the worst\b/i, (res) ->
    res.send "The WORST??"
    res send "http://i.imgur.com/soCn1os.jpg"
  # Abe's "I used to be with it rant"
  robot.hear /times are changing\b/i, (res) ->
    res.send "https://www.youtube.com/watch?v=LV0wTtiJygY"
  # Drinking problem?
  robot.hear /drinking problem\b/i, (res) ->
    res.send "That's about when my drinking problem started.."
    res.send "http://i.imgur.com/0Wui6ZF.gifv"