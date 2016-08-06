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

wat = [
  'http://i265.photobucket.com/albums/ii203/BigMobe/Funny%20pics/watbird.jpg',
  'http://ruby.zigzo.com/wp-content/uploads/sites/2/2013/02/wat-gigantic-duck.jpg',
  '( ͠° ͟ʖ ͡°)'
]

simpsons = [
  {
    image: 'https://i.imgur.com/wysPGL6.jpg',
    text: 'North Haverbrook? Where have I heard that name before? Oh no, OH NO!'
  },
  {
    image: "http://i.imgur.com/JfEEuZh.png",
    text: "I'm going outside ... to *stalk* ... Lenny and Carl."
  },
  { image: 'https://i.imgur.com/2yb1lSo.jpg' },
  { image: 'https://i.imgur.com/rpA5jMS.jpg' },
  { image: 'https://i.imgur.com/PjRwU9L.jpg' },
  { image: 'http://i.imgur.com/TJYH4fd.gif' },
  {
    image: 'https://i.imgur.com/0ivzKZh.jpg',
    text: 'Aurora Borealis'
  },
  { image: 'http://i.imgur.com/dupyWCK.gif' },
  {
    image: 'https://i.imgur.com/SEVz2GC.jpg',
    text: "Now, you boy!"
  }
]

module.exports = (robot) ->
  # Disco ball!
  robot.hear /disco form|disco/i, (res) ->
    res.send "https://circa71.files.wordpress.com/2012/02/discoball3-1.gif"
  # Disco Inferno!!
  robot.hear /disco inferno/i, (res) ->
    res.send "Did someone say, DISCO INFERNO?"
    res.send "http://i.imgur.com/ac98Olx.jpg"
    res.send "https://www.youtube.com/watch?v=A_sY2rjxq6M"
  # Random AI pics
  robot.hear /practice/i, (res) ->
    res.send "Practice?"
    res.send res.random practice
  # Local Man Ruins Everything picture
  robot.hear /you're the worst/i, (res) ->
    res.send "The WORST??"
    res send "http://i.imgur.com/soCn1os.jpg"
  # Abe's "I used to be with it rant"
  robot.hear /times are changing/i, (res) ->
    res.send "https://www.youtube.com/watch?v=LV0wTtiJygY"
  # Drinking problem?
  robot.hear /drinking problem/i, (res) ->
    res.send "That's about when my drinking problem started.."
    res.send "http://i.imgur.com/0Wui6ZF.gifv"
  # BYAAAAAH
  robot.respond /can you provide me an appropriate reaction?/i, (res) ->
    res.send "http://i.imgur.com/edPxJBV.jpg"
  # randomly spit out a picture of pointing
  # WIP: make this an array of images
  robot.hear /I got you/i, (res) ->
    res.send "https://s3.amazonaws.com/uploads.hipchat.com/347975/2106287/PEnUVJLDHos4li4/CI8gcWWUYAAi_0h.jpg"
  robot.hear /\bThe Simpsons\b/, (res) ->
    simpson = res.random simpsons
    res.send simpson.image if simpson.image
    res.send simpson.text if simpson.text
  robot.hear /\bwat\b/i, (res) ->
    res.send res.random wat
  # X-Files - I want to believe.
  robot.hear /the truth/i, (res) ->
    res.send "I want to believe."
    res.send "https://i.imgur.com/2jsfax6.jpg"
  # Cell wall.
  robot.hear /cell wall/i, (res) ->
    res.send "http://i.imgur.com/olWwOqG.jpg"
  # Dude who microwaved cup of ramen without water
  robot.hear /small mistake/i, (res) ->
    res.send "http://i.imgur.com/qjujW6d.png"
  # Xzibit - if string contains "put a [word] in your [word]", show image of Xzibit.
  robot.hear /put a (.*) in your (.*)/i, (res) ->
    res.send "http://www.reactionface.info/sites/default/files/images/1310428349083_0.png"
  # Ludacris - STAND UP!
  robot.hear /(standup|stand up|stand-up)/i, (res) ->
    res.send "When I move, you move (just like that)"
    res.send "https://j.gifs.com/ADY99l.gif"
  # Thank the maker!
  robot.hear /(\bjoe\b|\bekiert\b|\bsmokinjoe\b)/i, (res) ->
    res.send "Thank the maker!"
    res.send "http://img.gawkerassets.com/img/17dz18u6h2n70jpg/original.jpg"
    res.send "https://github.com/smokinjoe"
