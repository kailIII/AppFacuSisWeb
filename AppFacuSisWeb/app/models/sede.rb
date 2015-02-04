class Sede < ActiveRecord::Base
  
  belongs_to :universidad
  belongs_to :facultad
  belongs_to :ciudad

  has_many :asignacion_funcionarios
  
  attr_accessible :nombre, :universidad_id, :facultad_id, :ciudad_id
  
  def completo
    "#{nombre}"
  end
end
