class CardTypesController < ApplicationController
	before_filter :find_model
	
	def index
		@cards = CardType.all
	end

	

	private
	def find_model
		@model = CardTypes.find(params[:id]) if params[:id]
	end
end