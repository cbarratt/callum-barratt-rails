class MacroSerializer < ActiveModel::Serializer
  attributes :id, :calories, :carbs, :fat, :protein, :logged_date

  def logged_date
    object.logged_date.to_s(:readable)
  end
end
