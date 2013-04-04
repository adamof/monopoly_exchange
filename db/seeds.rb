# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cards = {
'Brown' => ["Old Kent Road", "Whitechapel Road"],
'Lightblue' => ["The Angel, Islington", "Euston Road", "Pentonville Road"],
'Purple' => ["Pall Mall", "Whitehall", "Northumberl'd Avenue"],
'Orange' => ["Bow Street", "Marlborough Street", "Vine Street"],
'Red' => ["The Strand", "Fleet Street", "Trafalgar Square"],
'Yellow' => ["Leicester Square", "Coventry Street", "Piccadilly"],
'Green' => ["Regent Street", "Oxford Street", "Bond Street"],
'Darkblue' => ["Park Lane", "Mayfair"],
'Black' => ["Kings Cross Station", "Marylebone Station", "Fenchurch St. Station", "Liverpool St. Station"]
}

cards.each do |c,b|
	b.each do |n|
		CardType.create(name: n, color: c)
	end
end