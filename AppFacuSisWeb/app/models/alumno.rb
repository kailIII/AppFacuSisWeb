class Alumno < ActiveRecord::Base
  attr_accessible :apellidos, :celular, :ci, :direccion, :email, :est_civil, :fnac, :genero, :lnac, :nacionalidad, :nombres, :procedencia, :telefono
end
