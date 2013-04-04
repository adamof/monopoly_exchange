class CardType < ActiveRecord::Base
  attr_accessible :name, :color
  def print_name
    "#{color} - #{name}"
  end
end