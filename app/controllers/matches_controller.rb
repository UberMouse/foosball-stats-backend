class MatchesController < ApplicationController
  def create
    Match.create(match_params)
  end

  def match_params
    params.require(:match).permit(:date, match_players_attributes: [:match_id, :player_id, :position, :goals, :team])
  end
end
