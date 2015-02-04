class Alumno < ActiveRecord::Base
  
  has_many :asignacion_estado_alumnos
  
  attr_accessible :apellidos, :celular, :ci, :direccion, :email, 
                  :est_civil, :fnac, :genero, :lnac, :nacionalidad, 
                  :nombres, :procedencia, :telefono
end
