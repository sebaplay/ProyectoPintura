class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :precio
      t.integer :cantidad
      t.references :proveedor, index: true, foreign_key: true
      t.references :pintura, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
