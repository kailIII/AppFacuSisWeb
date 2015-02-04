class Carrera < ActiveRecord::Base
  belongs_to :facultad
  attr_accessible :duracion, :nombre, :titulo_obtenido, :facultad_id
end
