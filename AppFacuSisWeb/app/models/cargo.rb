class Cargo < ActiveRecord::Base
  attr_accessible :descripcion
  
  has_many :asignacion_funcionarios
  
  def completo
    "#{descripcion}"
  end
end
