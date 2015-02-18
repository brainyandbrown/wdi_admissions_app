class AdmissionsController < ApplicationController

  def views
    @admission = Admission
  end

  def index
    @admission = Admission.all
  end

  def new
    @admission = Admission.new
  end

  def create
    @admission = Admission.(admission_params)
    redirect_to @admission
  end


  private

  def admission_params
    params.require(:admission).permit(:name)
  end
end

