class ProducersController < ApplicationController

  def index
    @producers = Producer.all
  end

  def new
    @producer = Producer.new
  end

  def create
    producer = Producer.new(admission_params)
    producer.save
    redirect_to producer
  end

  private

  def admission_params
    params.require(:producer).permit(:name)
  end
end

