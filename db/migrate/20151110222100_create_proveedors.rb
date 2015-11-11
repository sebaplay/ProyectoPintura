class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :empresa
      t.string :correo

      t.timestamps null: false
    end
  end
end
