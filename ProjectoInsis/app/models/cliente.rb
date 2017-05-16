class Cliente < ApplicationRecord
	has_many :pedidos

	validates :cod_cli , uniqueness: true
	validates :nombre , presence: {:message => 'Se necesita nombre de cliente'}
	validates :nombre , uniqueness: true
	validates :telefono , numericality: true
	validates :telefono , uniqueness: true
end
