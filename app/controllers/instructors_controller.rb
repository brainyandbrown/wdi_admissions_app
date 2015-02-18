class InstructorsController < ApplicationController

  def views
    @instructor = Instructor
  end

  def index
    @instructor = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])

  def new_instructor
    @instructor = Instructor.new
  end

  def create_instructor
    @instructor = Instructor(instructor_params)
    redirect_to @instructor
  end

  private

  def instructor_params
    params.require(:instructor).permit(:name)
  end

end
