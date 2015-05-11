class WeighinSerializer < ActiveModel::Serializer
  attributes :id, :withings_id, :weight, :bodyfat_mass, :bodyfat_percentage, :lean_mass, :taken_at

  def taken_at
    object.taken_at.to_s(:weight)
  end
end
