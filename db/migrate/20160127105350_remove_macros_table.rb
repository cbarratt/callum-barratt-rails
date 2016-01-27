class RemoveMacrosTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :macros
  end
end
