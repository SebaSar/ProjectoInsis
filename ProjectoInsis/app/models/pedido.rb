class Pedido < ApplicationRecord
	belongs_to :cliente

	validates :cod_pedido , uniqueness: true
end
