class AsignacionFuncionario < ActiveRecord::Base
  
  belongs_to :sede
  belongs_to :funcionario
  belongs_to :cargo
  
  attr_accessible :nombre, :sede_id, :funcionario_id, :cargo_id
end
