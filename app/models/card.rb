class Card < ActiveRecord::Base
  attr_accessible :email, :card_type_id
  belongs_to :card_type
  validates_uniqueness_of :email, :scope => :card_type_id
end