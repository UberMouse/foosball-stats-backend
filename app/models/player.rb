class Player < ActiveRecord::Base
  has_many :match_players
  has_many :matches, through: :match_players
end
