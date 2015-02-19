class InstructorsController < ApplicationController


  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    instructor = Instructor.create(instructor_params)
    redirect_to instructor
  end



  def instructor_params
    params.require(:instructor).permit(:name)
  end

end
