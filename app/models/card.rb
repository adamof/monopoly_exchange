class Card < ActiveRecord::Base
  attr_accessible :email, :card_type_id
  belongs_to :card_type
  validates_uniqueness_of :email, :scope => :card_type_id
  before_create :generate_token

  protected

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64
      break random_token unless Card.where(token: random_token).exists?
    end
  end
end