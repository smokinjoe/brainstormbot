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
  robot.respond /(.*?) want to play/i, (res) ->
    players = cleansePlayers res.match[1]
    teams = formTeams players
    message = []
    message.push('The upcoming matchup will feature the following teams:')
    for i in [0...teams.length]
      message.push(teamName())
      message.push(formatTeam teams[i])
    res.send message.join('\n')

cleansePlayers = (match) ->
  players = match.split /,|and/

  for i in [0...players.length]
    players[i] = players[i].replace(/\s+/g,"")

  return players;


cleanseTeams = (arg) ->
  result = []
  for i in [0...arg.length]
    if (arg[i].length > 0)
      result.push(arg[i])

  return result


teamName = () ->
  ADJECTIVES = ['Generous', 'Springfield', 'Risky', 'Hilarious', 'Just', 'Gracious', 'Adjective', 'Sinister', 'Chaotic Neutral', 'Dynamic', 'Silent', 'Quite Skilled', 'Really Bizarre', 'Thunderous', 'Rather Sluggish', 'Zombie', 'Always Optimistic', 'Misfit', 'Buffalo']
  VERBS = ['Thundering', 'Screaming', 'Flying', 'Giggling', 'Running', 'Launching', 'Coding', 'Verbing', 'Searching', 'Cooking', 'Juggling', 'Rambling', 'Raving', 'Falling', 'Ranting', 'Laughing', 'Merging', 'Conquering', 'Somewhat Challenging', 'Charging', 'Buffalo']
  NOUNS = ['Funk', 'Earthlings', 'Vengadesh', 'Coders', 'Nouns', 'Rattlers', 'Cyclones', 'Team', 'Pair', 'Duo', 'Waffles', 'Snakes', 'Treeslugs', 'Wildcats', 'Isotopes', 'Bazaar', 'Home Team', 'Away Team', 'Replacements', 'Barnstormers', 'Ponies', 'Mimes', 'Optimists', 'Pessimists', 'Challengers', 'Buffalo']

  adjectiveIndex = Math.floor(( Math.random() * ADJECTIVES.length ))
  adjective = ADJECTIVES[adjectiveIndex]
  verbIndex = Math.floor(( Math.random() * VERBS.length ))
  verb = VERBS[verbIndex]
  nounIndex = Math.floor(( Math.random() * NOUNS.length ))
  noun = NOUNS[nounIndex]

  if ( Math.floor(( Math.random() * 2 )) == 1 )
    return 'The ' + verb + ' ' + noun + ':'
  else
    return 'The ' + adjective + ' ' + noun + ':'


formatTeam = (team) ->
  return team[0] + ' and ' + team[1]


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




































