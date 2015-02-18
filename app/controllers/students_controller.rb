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

  def student_params
    params.require(:student).permit(:name)
  end
end
