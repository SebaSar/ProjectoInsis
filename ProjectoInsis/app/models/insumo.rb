class Insumo < ApplicationRecord
  belongs_to :receta, foreign_key: :cod_receta
  
  validates :cod_insumo , uniqueness: true 
  validates :nombre, presence: {:message => 'Se necesita nombre de producto'}
  validates :nombre , uniqueness: {:message => 'El producto ingresado ya existe'}
  validates :cantidad, numericality: true
  validates :unidad_medida, presence: {:message => 'Ingrese unidad de medida delproducto'}
  validates :fecha_vencimiento_valida
   
  def fecha_vencimiento_valida
     if fecha_venc.blank? and fecha_venc < Date.today
       errors.add(:fecha_venc,"Fecha ingresada no es válida")
     end
   end
       
  
end
