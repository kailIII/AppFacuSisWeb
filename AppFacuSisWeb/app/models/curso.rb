class Curso < ActiveRecord::Base
  belongs_to :semestre
  belongs_to :periodo_lectivo
  # attr_accessible :title, :body
  
  has_many :asignacion_docentes
end
