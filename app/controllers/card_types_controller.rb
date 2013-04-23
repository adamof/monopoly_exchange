class CardTypesController < ApplicationController
	before_filter :get_cards
	
	def index
		@cards = CardType.all.group_by{|r| r.color}
	end

  def post_cards
    existing = []
    cards = []
    @card_types.each do |card_type|
      card = Card.new
      card.email = params[:email]
      card.card_type_id = card_type
      if card.save
        cards << card
      else
        existing << CardType.find(card_type).name
      end
    end
    # if existing.empty?
      UserMailer.welcome_email(params[:email], cards).deliver
      render text: "true"
    # else
    #   render text: existing.join(", ")
    # end
  end

  def find_cards
    emails = Card.find_all_by_card_type_id(@card_types).group_by(&:email)
    p emails
    emails.each do |email, cards|
      p email
      p cards
      UserMailer.search_email(params[:email], email, cards).deliver
    end
    render text: "true"
  end

  def remove_card
    card = Card.find_by_token(params[:token])
    @card_name = card.card_type.print_name
    card.destroy
    render :inline =>
      "You have successfully removed <%= @card_name %>."
  end

  private
  def get_cards
    @card_types = params[:cards]
  end

  def find_model
    @model = CardTypes.find(params[:id]) if params[:id]
  end

end