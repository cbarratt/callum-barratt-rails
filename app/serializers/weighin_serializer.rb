class WeighinSerializer < ActiveModel::Serializer
  attributes :id, :weight, :bodyfat_mass, :bodyfat_percentage, :lean_mass, :taken_at

  def taken_at
    object.taken_at.strftime('%d %b %Y %I:%M %P')
  end
end
