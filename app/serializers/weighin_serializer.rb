class WeighinSerializer < ActiveModel::Serializer
  attributes :id, :weight, :bodyfat_mass, :bodyfat_percentage, :lean_mass, :taken_at
end
