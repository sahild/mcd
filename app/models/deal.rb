class Deal < ActiveRecord::Base
  validates_presence_of :schemetext, :vendor
  has_and_belongs_to_many :cards
end
