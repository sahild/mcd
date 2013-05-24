class Deal < ActiveRecord::Base
  validates_presence_of :schemetext, :vendor, :card_type_id
  belongs_to :card_type
end
