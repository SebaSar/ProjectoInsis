class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.integer :cod_insumo
      t.string :nombre
      t.integer :cantidad
      t.date :fecha_venc
      t.string :unidad_medida

      t.timestamps
    end
  end
end
