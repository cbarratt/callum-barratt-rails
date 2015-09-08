class Api::V1::MacrosController < Api::V1::BaseController
  def index
    macros = Macro.order(logged_date: :desc)

    if stale?(etag: macros, last_modified: macros.first.updated_at, template: false)
      render json: macros
    end
  end
end
