class StudentsController < ApplicationController


  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(student_params)
    #sends notification
    StudentMailer.welcome_email(student).deliver_now

    redirect_to student_path(student)
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    student.save

    flash[:success] = true
    redirect_to student_path(student)
  end

  def destroy
    Student.destroy(params[:id])
    redirect_to @student
  end

  private

  def student_params
    params.require(:student).permit(:email, :password, :portfolio)
  end

end
