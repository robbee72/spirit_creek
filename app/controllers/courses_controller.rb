class CoursesController < ApplicationController
  
  protect_from_forgery
  skip_before_action :verify_authenticity_token, only: [:destroy]
 
    layout 'admin'
  
  def index
    @courses = Course.paginate(:page => params[:page], per_page: 4)
  end
  
  def new
  end
  
  def create
    @course = Course.new(course_params)
      respond_to do |format|
      if @course.save
        flash[:notice] = "Course created."
       format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
		@course = Course.find(params[:id])
        if @course.update(course_params)
            flash[:notice] = "Course created."
            redirect_to course_path(@course)
        else
            render 'edit' 
       end
  end
  def destroy
  end
  
  def edit
    @course = Course.find(params[:id])
    flash[:notice] = "Course was successfully Changed"
  end
  
  def show
    @course = Course.find(params[:id])
  end
  
  def card_total
    @courses = Course.all
  end
  
  private
  
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:id, :name,
    :par_1,
    :par_2,
    :par_3,
    :par_4,
    :par_5,
    :par_6,
    :par_7,
    :par_8,
    :par_9,
    :par_10,
    :par_11,
    :par_12,
    :par_13,
    :par_14,
    :par_15,
    :par_16,
    :par_17,
    :par_18, 
    :total_par,
    :yardage_1,
    :yardage_2,
    :yardage_3,
    :yardage_4,
    :yardage_5,
    :yardage_6,
    :yardage_7,
    :yardage_8,
    :yardage_9,
    :yardage_10,
    :yardage_11,
    :yardage_12,
    :yardage_13,
    :yardage_14,
    :yardage_15,
    :yardage_16,
    :yardage_17,
    :yardage_18,
    :total_yardage,
    :tees)
    end
  end

