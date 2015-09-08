class HealthController < ApplicationController
  def index
    @last_weighin = Weighin.order(taken_at: :desc).first
    @last_weighin_lbs = (@last_weighin.weight.to_f * 2.20462).round(2)
    @measurements = Weighin.order(taken_at: :desc).first(7)

    @current_intake = Macro.find_by(logged_date: Date.today)
    @macronutrients = Macro.order(logged_date: :desc)

    fresh_when(etag: @macronutrients, last_modified: @macronutrients.first.updated_at)
  end
end
