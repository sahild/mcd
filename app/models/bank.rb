class Bank < ActiveRecord::Base
  validates_presence_of :name
  has_many :cards
  end
