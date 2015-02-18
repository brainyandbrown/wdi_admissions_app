class AdmissionsController < ApplicationController

  def views
    @admission = Admissions
  end

  def index
    @admission = Admissions.all
  end

  def new
    @admission = Admissions.new
  end

  def create
    @admission = Admissions.(admission_params)
    redirect_to @admission
  end


  private

  def admission_params
    params.require(:admissions).permit(:name)
  end
end

