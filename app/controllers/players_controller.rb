class PlayersController < ApplicationController
  
  def create
    
  end

  def player_params
    params.require(:player).permit(:name, :avatar)
  end
end
