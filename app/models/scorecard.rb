class ScorecardsController < ApplicationController
 

 
   def new
     @scorecard = Scorecard.new
 
   def destroy
     @scorecard = Scorecard.find(params[:id])
    @scorecard.destroy 
     flash[:notice] = "Are you an Administrator? If so it's been delete!"
     redirect_to scorecards_path
   end
  
  def delete
  
  end
 
   def edit
     @scorecard = Scorecard.find(params[:id])
 
   def create
     @scorecard = Scorecard.new(scorecard_params)
    @scorecard.save
    redirect_to scorecards_path(@scorecard)

    if @scorecard.save
      flash[:success]= "Scorecard was successfully created"
      redirect_to scorecards_path(@scorecard)
    else
      render 'new'
    end
   end
 
   def update
@@ -38,40 +45,9 @@ class ScorecardsController < ApplicationController
       flash[:notice] = "scorecard was succcesfully updated"
       redirect_to @scorecard
     else
      render 'new'
      render 'edit'
     end
   end
class Array

  def sum
    inject { |sum, x| sum + x }
  end
end

  def total
  @total = Total.new
  total = [@scorecard.hole_1,
      @scorecard.hole_2,
      @scorecard.hole_3,
      @scorecard.hole_4,
      @scorecard.hole_5,
      @scorecard.hole_6,
      @scorecard.hole_7,
      @scorecard.hole_8,
      @scorecard.hole_9,
      @scorecard.hole_10,
      @scorecard.hole_11,
      @scorecard.hole_12,
      @scorecard.hole_13,
      @scorecard.hole_14,
      @scorecard.hole_15,
      @scorecard.hole_16,
      @scorecard.hole_17,
      @scorecard.hole_18].sum

    total.inject(0){|sum,x| sum + x }
  end

 
   private
     def scorecard_params
