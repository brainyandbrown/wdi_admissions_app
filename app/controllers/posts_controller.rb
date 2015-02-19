class PostsController < ApplicationController

  def create
    @student = Student.create( student_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def student_params
    params.require(:student).permit(:avatar)
  end

end
