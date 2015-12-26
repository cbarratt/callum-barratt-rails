class Api::V1::WeighinsController < Api::V1::BaseController
  def index
    weighins = Weighin.order(taken_at: :desc).to_a

    if stale?(weighins, template: false)
      render json: weighins
    end
  end
end
