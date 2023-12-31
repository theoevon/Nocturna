class AccueilController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end

    if session[:personnage_id]
      @personnage = Personnage.find_by(id: session[:personnage_id])
    end

    if session[:id_gamemaster]
      @gamemaster = Gamemaster.find_by(id: session[:id_gamemaster])
    end

    @cinematic = Cinematic.find_by(user_id: session[:user_id])
  end
end