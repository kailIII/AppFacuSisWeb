class AsignacionDocente < ActiveRecord::Base
 
  belongs_to :docente
  belongs_to :curso
  belongs_to :materia
  belongs_to :dia_semanal
  
  attr_accessible :nombre, :docente_id, :curso_id, :materia_id, :dia_semanal_id
end
