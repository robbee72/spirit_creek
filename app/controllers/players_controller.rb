class PlayersController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token, only: [:destroy]

  layout 'admin'
  
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
     @player = Player.find(params[:id])
  end

 
  def new
  end

  def edit
    @player = Player.find(params[:id])
    flash[:notice] = "Player was successfully Changed"
  end

  def create
    @player = Player.new(player_params)
      if @player.save
        flash[:success]= 'Player was successfully created.' 
        redirect_to players_path 
      else
         render 'show' 
      end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
        flash[:notice] = "Player name was successfully updated"
        redirect_to player_path(@player)
    else
        render 'edit'    
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    flash[:notice] = 'Player was successfully delete.' 
      redirect_to players_path
  end
  
  private
   
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.permit(:player)
    end
end
