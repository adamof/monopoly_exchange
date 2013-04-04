class Card < ActiveRecord::Base
  # attr_accessible :name, :color
  belongs_to :card_type
end