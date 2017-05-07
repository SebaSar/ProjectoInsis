class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.integer :telefono
      t.integer :cod_cli

      t.timestamps
    end
  end
end
