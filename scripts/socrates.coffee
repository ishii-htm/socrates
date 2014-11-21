meigen_list = [
  "わからないということが、わかりました",
  "あー、わかるー",
  "ｼｺｯ",
  "天才ナスビの元気がないTV",
  "ふわっふわのオムレツ食べる？",
  "ふにゃ－－☆٩(͡๏̯͡๏)۶",
  "ｲｸ？ｲｸ･･ｲ･･ｸ･･ｲｸｲｸ、うんｲｸｲｸｲ･･ｸ･･？",
  "AVやったら●食わされるレベルや",
  "濱田が異常にムカつく",
  "そのへんの細かい事は良いんですよ！"
]

module.exports = (robot) ->
  robot.hear /:socrates|@socrates/, (msg) ->
    msg.send msg.random meigen_list

  robot.hear /(わか|分か|解|判)るか/i, (msg) ->
    msg.send msg.random [
      "わかりません",
      "わかれよ！",
      "別れよっ？"
    ]
