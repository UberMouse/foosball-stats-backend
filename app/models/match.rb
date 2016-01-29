class Match < ActiveRecord::Base
  has_many :match_players
  has_many :players, through: :match_players

  accepts_nested_attributes_for :match_players

  validates_presence_of :date
end
