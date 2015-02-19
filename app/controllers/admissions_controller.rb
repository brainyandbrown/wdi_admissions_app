class AdmissionsController < ApplicationController

  def index
    @admissions = Admission.all
  end

  def new
    @admission = Admission.new
  end

  def create
    admission = Admission.new(admission_params)
    admission.save
    redirect_to admission
  end

  private

  def admission_params
    params.require(:admission).permit(:name)
  end
end

