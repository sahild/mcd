class Card < ActiveRecord::Base
  validates_presence_of :bank_id
  belongs_to :bank
  has_and_belongs_to_many :deals
end
