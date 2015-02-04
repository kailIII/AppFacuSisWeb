class Semestre < ActiveRecord::Base
  attr_accessible :descripcion, :numero
  
  has_many :cursos
  
  def completo
    "#{descripcion}"
  end
end
