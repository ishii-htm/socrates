# Description:
#   No overtime by node-cron.

cron = require('cron').CronJob
random = require('hubot').Response::random

module.exports = (robot) ->

  sayArr = [
    '@channel: 定時退社の時間になりました。毎日遅くまでご苦労様です。今日ぐらいは早く帰ってもいいんじゃないですか。'
    '@channel: 定時退社の時間になりました。早く帰ってゆっくりお風呂に入れば疲れもとれますよ。'
    '@channel: 定時退社の時間になりました。今日のドラマを楽しみにしてたんじゃないですか？'
    '@channel: 定時退社の時間になりました。家であなたの帰りを待ってる人が居ますよ。'
    '@channel: 定時退社の時間になりました。役職のある人から早く帰りましょう。'
    '@channel: 定時退社の時間になりました。今日は用事があるのでお先に失礼します。'
    '@channel: 定時退社の時間になりました。残業のし過ぎは生産効率の低下を招きます。'
    '@channel: 定時退社の時間になりました。残業をするのは能力が低い証拠だ。'
    '@channel: 定時退社の時間になりました。貴様ら、とっととお帰りください。'
    '@channel: 定時退社の時間になりました。え、まだ働くんですか？社畜さんチーッス。'
    '@channel: 定時退社の時間になりました。ダラダラ仕事してんじゃねーよ亀かよ。'
    '@channel: 定時退社の時間になりました。おい、飲みに行かないか。'
    '@channel: 定時退社の時間になりました。ここは俺に任せてお前らは早く逃げろ！'
    '@channel: 定時退社の時間になりました。退社、退社、さっさと退社、しばくぞ♪'
    '@channel: 定時退社の時間になりました。本日の白州、これまで。'
    '@channel: 定時退社の時間になりました。process.exit();'
    '@channel: 定時退社の時間になりました。ああっ、もうダメッ！ぁあ…会社出るっ、会社出ますうっ！！'
  ]
  new cron '0 0 19 * * 1-5', () ->
    user = {room: '#general'}
    say = random sayArr
    robot.send user, say
  , null, true
