class CardType < ActiveRecord::Base
  has_many :cards
  attr_accessible :name, :color
  COLOURS = {
		'Brown' => '8e5524',
		'Lightblue' => '82caec',
		'Purple' => 'a9548e',
		'Orange' => 'e07f36',
		'Red' => 'b6362c',
		'Yellow' => 'f5cd47',
		'Green' => '5c9739',
		'Darkblue' => '1a64a3',
		'Black' => '1f282e'
	}
  def print_name
    "#{color} - #{name}"
  end
end