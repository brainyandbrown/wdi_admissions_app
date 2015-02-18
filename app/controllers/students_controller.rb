class StudentsController < ApplicationController

  def views
    @student = Student
  end

  def index
    @student = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.(student_params)
    redirect_to @student
  end

  private



# paperclip methods
def create
  @student = Student.create( student_params )
end


# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.


  def student_params
    params.require(:student).permit(:name, :portfolio)
  end
end
