class Api::V1::WeighinsController < Api::V1::BaseController
  def index
    weighins = Weighin.order(taken_at: :desc).first(7)

    if stale?(etag: weighins, last_modified: weighins.first.taken_at, template: false)
      render json: weighins
    end
  end
end
