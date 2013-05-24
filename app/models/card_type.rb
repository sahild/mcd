class CardType < ActiveRecord::Base
  validates_presence_of :bank_id
  belongs_to :bank
  has_many :deals
end
