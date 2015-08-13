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
    tmp = msg.split /,/


// from: https://github.com/github/hubot-scripts/blob/master/src/scripts/pin.coffee
// pin_me = (msg, url, query, cb) ->
//   http msg, url, query, (err, res, body) ->
//     pin_url = get_pin_url(body, 'a.PinImage.ImgLink')
//     if pin_url?
//       http msg, pin_url, null, (err, res, body) ->
//         cb get_pin_img(body, 'img#pinCloseupImage')
//     else cb 'Sorry no pin found.'
//
// http = (msg, url, query, cb) ->
//   msg.http(url)
//     .query(q: query)
//     .get() cb