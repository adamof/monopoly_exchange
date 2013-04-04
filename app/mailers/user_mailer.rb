class UserMailer < ActionMailer::Base
  default from: "hi@monopolyexchange.com"

  def welcome_email(email, cards)
    @cards = cards
    mail(:to => email, :subject => "Monopoly Exchange | You have successfully added #{cards.count} stickers")
  end
end
