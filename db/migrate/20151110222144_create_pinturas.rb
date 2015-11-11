class CreatePinturas < ActiveRecord::Migration
  def change
    create_table :pinturas do |t|
      t.string :modelo
      t.string :color
      t.references :proveedor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
