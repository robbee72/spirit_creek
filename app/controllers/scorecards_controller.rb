class ScorecardsController < ApplicationController
 before_action :set_scorecard, only: [:show, :edit, :update, :destroy]
  protect_from_forgery
  skip_before_action :verify_authenticity_token, only: [:destroy]
 
  def index 
      @scorecards = Scorecard.paginate(:page => params[:page], per_page: 4)
      
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
    @scorecard = Scorecard.new(scorecard_params)
    respond_to do |format|
      if @scorecard.save
        flash[:notice] = "Scorecard created."
       format.html { redirect_to @scorecard, notice: 'Scorecard was successfully created.' }
        format.json { render :show, status: :created, location: @scorecard }
      else
        format.html { render :new }
        format.json { render json: @scorecard.errors, status: :unprocessable_entity }
      end
    end
  end
 
 def update
		@scorecard = Scorecard.find(params[:id])
		if @scorecard.update(scorecard_params)
			flash[:notice] = "Scorecard name was successfully updated"
			redirect_to scorecard_path(@scorecard)
		else
			render 'edit'
		end
	end
  
  def destroy
    @scorecard = Scorecard.find(params[:id])
    @scorecard.destroy
    flash[:notice] = "Scorecard was successfully deleted"
    redirect_to scorecards_path
  end

   def total
    @scorecards = Scorecard.all
#    @total = Total.sort {|b1,b2| b2<=>b1 }
  end 

  
  private
  
    def set_scorecard
      @scorecard = Scorecard.find(params[:id])
    end

    def scorecard_params
      params.require(:scorecard).permit(:id, :player, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18, :total)
    end
end
