class Match < ActiveRecord::Base
  has_many :match_players
  has_many :players, through: :match_players

  accepts_nested_attributes_for :match_players

  validates_presence_of :date
  validate :number_of_match_players

  def number_of_match_players
    if match_players.reject(&:marked_for_destruction?).size != 4
      errors.add(:match_players, "Must have exactly 4 MatchPlayers")
    end
  end
end
