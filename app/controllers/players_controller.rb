class PlayersController < ApplicationController
  
  def create
    return render nothing: true, status: :bad_request unless params.has_key?(:player)

    Player.create(player_params)
  end

  def player_params
    params.require(:player).permit(:name, :avatar)
  end
end
