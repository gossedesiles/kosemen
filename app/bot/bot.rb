
require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
  access_token: environment["ACCES_TOKEN"],
  subscribed_fields: %w[histoiredejouir]
)

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end