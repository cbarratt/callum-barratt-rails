class CreateMacros < ActiveRecord::Migration
  def change
    create_table :macros do |t|
      t.string :calories
      t.string :carbs
      t.string :fat
      t.string :protein
      t.date :logged_date

      t.timestamps
    end
  end
end
