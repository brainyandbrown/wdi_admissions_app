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

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
