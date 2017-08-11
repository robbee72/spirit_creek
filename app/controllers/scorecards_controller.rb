class ScorecardsController < ApplicationController
#  before_action :set_scorecard, only: [:show, :edit, :update, :destroy]
protect_from_forgery
  # GET /scorecards
  # GET /scorecards.json
  def index
    @scorecards = Scorecard.all
  end

  # GET /scorecards/1
  # GET /scorecards/1.json
  def show
    @scorecard = Scorecard.new(scorecard_params)
  end

  # GET /scorecards/new
  def new
    @scorecard = Scorecard.new
  end

  # GET /scorecards/1/edit
  def edit
  end

  # POST /scorecards
  # POST /scorecards.json
  def create
    @scorecard = Scorecard.new(scorecard_params)

    respond_to do |format|
      if @scorecard.save
        format.html { redirect_to @scorecard, notice: 'Scorecard was successfully created.' }
        format.json { render :show, status: :created, location: @scorecard }
      else
        format.html { render :new }
        format.json { render json: @scorecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scorecards/1
  # PATCH/PUT /scorecards/1.json

 def update
		@scorecard = Scorecard.find(params[:id])
		if @scorecard.update(scorecard_params)
			flash[:success] = "Scorecard name was successfully updated"
			redirect_to scorecard_path(@scorecard)
		else
			render 'edit'
		end
	end

  # DELETE /scorecards/1
  # DELETE /scorecards/1.json
  def destroy
    @scorecard.destroy
    respond_to do |format|
      format.html { redirect_to scorecards_url, notice: 'Scorecard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def total_score
    @total_score = Total_score.all
       @total_score = [@scorecard.hole_1.to_i, @scorecard.hole_2.to_i, @scorecard.hole_3.to_i, @scorecard.hole_4.to_i, @scorecard.hole_5.to_i, @scorecard.hole_6.to_i, @scorecard.hole_7.to_i, @scorecard.hole_8.to_i, @scorecard.hole_9.to_i, @scorecard.hole_10.to_i, @scorecard.hole_11.to_i, @scorecard.hole_12.to_i, @scorecard.hole_13.to_i, @scorecard.hole_14.to_i, @scorecard.hole_15.to_i, @scorecard.hole_16.to_i, @scorecard.hole_17.to_i, @scorecard.hole_18.to_i] 
   
      total_score.each do |hole|
    puts "#{hole}"
  end  
  
    total_score.inject(0) {|sum, x| sum + x} 
    total_score.sort {|b1,b2| b2<=>b1 }
 end 
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scorecard
      @scorecard = Scorecard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scorecard_params
      params.require(:scorecard).permit(:id, :player, :hole_1, :hole_2, :hole_3, :hole_4, :hole_5, :hole_6, :hole_7, :hole_8, :hole_9, :hole_10, :hole_11, :hole_12, :hole_13, :hole_14, :hole_15, :hole_16, :hole_17, :hole_18)
    end
end
