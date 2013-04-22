class UserMailer < ActionMailer::Base
  default from: "hi@monopolyexchange.com"

  def welcome_email(email, cards)
    @cards = cards
    mail(:to => email, :subject => "Monopoly Exchange | You have successfully added #{cards.count} stickers")
  end
  def search_email(sender, receiver, cards)
    @sender = sender
    @cards = cards
    mail(:to => receiver, :subject => "Monopoly Exchange | You have stickers request.", :reply_to => sender)
  end
end
