meigen_list = [
  "わからないということが、わかりました",
  "ふにゃ－－☆٩(͡๏̯͡๏)۶"
]

module.exports = (robot) ->
  robot.hear /:socrates|@socrates/, (msg) ->
    msg.send msg.random meigen_list

  robot.hear /(わか|分か|解|判)るか/i, (msg) ->
    msg.send msg.random [
      "わかりません",
      "わかれよ！"
    ]
