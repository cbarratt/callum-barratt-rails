class Api::V1::MacrosController < Api::V1::BaseController
  def index
    macros = Macro.order(logged_date: :desc)

    render json: macros
  end
end
