class CreateWeighins < ActiveRecord::Migration
  def change
    create_table :weighins do |t|
      t.integer :withings_id
      t.string :weight
      t.string :bodyfat_mass
      t.string :bodyfat_percentage
      t.string :lean_mass
      t.datetime :taken_at
    end
  end
end
