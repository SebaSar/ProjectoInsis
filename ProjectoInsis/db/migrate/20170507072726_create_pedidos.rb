class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.integer :cod_pedido

      t.timestamps
    end
  end
end
