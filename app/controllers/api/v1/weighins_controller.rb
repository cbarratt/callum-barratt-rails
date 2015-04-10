class Api::V1::WeighinsController < Api::V1::BaseController
  def index
    weighins = Weighin.order(taken_at: :desc)

    render json: weighins
  end
end
