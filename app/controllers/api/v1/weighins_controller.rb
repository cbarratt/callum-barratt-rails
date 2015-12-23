class Api::V1::WeighinsController < Api::V1::BaseController
  def index
    weighins = Weighin.order(taken_at: :desc)

    if stale?(weighins, etag: weighins.first.taken_at, last_modified: weighins.first.taken_at, template: false)
      render json: weighins
    end
  end
end
