class AdmissionsController < ApplicationController

  def views
    @admission = User.admission
  end

  def index
    @admission = User.admission.all
  end

  def new
    @admission = User.admission.new
  end

  def create
    @admission = User.admission.(admission_params)
    redirect_to @admission
  end

  def new_instructor
    @instructor = User.instructor.new
  end

  def create_instructor
    @instructor = User.instructor(instructor_params)
    redirect_to @instructor
  end

  private

  def admission_params
    params.require(:admission).permit(:name)
  end


  def instructor_params
    params.require(:instructor).permit(:name)
  end

end

