class CreateProvPints < ActiveRecord::Migration
  def change
    create_table :prov_pints do |t|
      t.references :proveedor, index: true, foreign_key: true
      t.references :pintura, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
