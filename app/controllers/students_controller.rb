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
    @student = Student.create(student_params)

    redirect_to student_path(student)
  end



  def student_params
    params.require(:student).permit(:email, :password, :id)
  end

  def destroy
    Student.destroy(params[:id])
    @student.portfolio = nil
    @student.save
    redirect_to @student
  end


end
