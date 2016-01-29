class MatchPlayer < ActiveRecord::Base
  GOALIE     = 0
  STRIKER    = 1
  RED_TEAM   = 0
  WHITE_TEAM = 1

  belongs_to :match
  belongs_to :player

  validates_presence_of :match_id, :player_id, :goals
  validates_numericality_of :goals,  greater_than_or_equal_to: 0, less_than_or_equal_to: 10
end
