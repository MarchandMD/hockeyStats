class PredictionsController < ApplicationController
  def index
    @predictions = Prediction.all
  end

  def new
    @prediction = Prediction.new
  end

  def create
    @prediction = Prediction.new(prediction_params)
    # @prediction.user = current_user
    @prediction.save
    redirect_to root_path
  end

  def show
    @prediction = Prediction.find(params[:id])
    @prediction.update(result: params[:result])
    redirect_to root_path
  end


  private

  def prediction_params
    params.require(:prediction).permit(:name)
  end
end
