class ScorecardsController < ApplicationController
 before_action :set_scorecard, only: [:show, :edit, :update, :destroy]
  protect_from_forgery
  skip_before_action :verify_authenticity_token, only: [:destroy]
  
  layout 'admin'

  
  def index 
      @scorecards = Scorecard.paginate(:page => params[:page],  per_page: 5) 
  end
  
  def show
    @scorecard = Scorecard.find(params[:id])
  end
 
  def new
    @scorecard = Scorecard.new
  end
 
  def edit
    @scorecard = Scorecard.find(params[:id])
    flash[:notice] = "Scorecard was successfully Changed"
  end

  def create
    @scorecard = Scorecard.create(scorecard_params)
      if @scorecard.save
        flash[:notice] = "Scorecard created."
        redirect_to scorecards_path(@scorecard)
        f
      else
         render 'new' 
    end
  end
 
  def update
    if @scorecard.update(scorecard_params)
        flash[:success] = "Scorecard name was successfully updated"
        redirect_to scorecard_path(@scorecard)
    else
        render 'edit'
    end
  end
  
  def destroy
    @scorecard.destroy
    flash[:notice] = "Scorecard was successfully deleted"
    redirect_to scorecards_path
  end

   def total
     @total = Total.find(params[:id])
      @total.save
#    total = Total.sort {|b1,b2| b2<=>b1 }
  end
  
  
  private
  
    def set_scorecard
      @scorecard = Scorecard.find(params[:id])
  
    end

    def scorecard_params
      params.permit(:player, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18, :total, :round_one, :round_two, :round_three, :round_final)
    end
end
