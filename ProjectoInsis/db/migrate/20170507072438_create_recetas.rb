class CreateRecetas < ActiveRecord::Migration[5.1]
  def change
    create_table :recetas do |t|
      t.integer :cod_receta
      t.string :nombre
      t.integer :precio_venta

      t.timestamps
    end
  end
end
