class CardTypesController < ApplicationController
	before_filter :get_cards
	
	def index
		@cards = CardType.all.group_by{|r| r.color}

	end

  def post_cards
    @card_types.each do |card_type|
      Card.create(email: params[:cards], card_type: card_type)
    end
  end 

  def find_cards
    @card_types.each do |card_type|
      p card_type
    end
    success = true
    render text: success.to_s
  end 

  private
  def get_cards
    @card_types = params[:cards]
  end

  def find_model
    @model = CardTypes.find(params[:id]) if params[:id]
  end

end