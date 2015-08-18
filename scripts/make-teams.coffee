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

# Wanted to be fancy and do it via my api
#module.exports = (robot) ->
#
#  robot.respond /(.*?) want to play/i, (msg) ->
#    tmp = msg.match[1].split /,/
#    http msg, 'http://localhost:3000/api/v1/form_teams', tmp, (error, response, body) ->
#      msg.send response
#
#http = (msg, url, obj, cb) ->
#	msg.http(url)
#    .query(players: obj)
#    .get() cb

# Instead, let's just perform all the magic in here!

module.exports = (robot) ->
  robot.respond /(.*?) want to play/i, (msg) ->
    players = cleansePlayers msg.match[1].split /,/
    teams = formTeams players
    for i in [0...teams.length]
      msg.send "Team " + (i+1) + ": " + teams[i]


cleansePlayers = (players) ->
  for i in [0...players.length]
    players[i] = players[i].replace(/\s+/g,"")

  return players;


cleanseTeams = (arg) ->
  result = []
  for i in [0...arg.length]
    if (arg[i].length > 0)
      result.push(arg[i])

  return result


shuffle = (arg) ->
  x = j = arg.length
  for i in [arg.length...0]
    j = Math.floor(Math.random() * i)
    x = arg[--i]
    arg[i] = arg[j]
    arg[j] = x

  return arg


getRandomArbitrary = (min, max) ->
  return Math.random() * (max - min) + min


randChunkSplit = (arr, min, max) ->
  arr = arr.slice()
  arrs = []
  size = 1
  min = min || 1
  max = max || min || 1

  for i in [arr.length...0]
    index = getRandomArbitrary(0, arr.length - 1)
    size = Math.min(max, Math.floor((Math.random() * max) + min))
    arrs.push(arr.splice(index, size))

  return arrs


formTeams = (players) ->
  players = players || []
  numPlayers = players.length
  groupCount = Math.ceil(numPlayers / 2)
  playerList = shuffle(players)
  teams = randChunkSplit(playerList, 2)
  return cleanseTeams teams