class Funcionario < ActiveRecord::Base
  
  attr_accessible :apellidos, :celular, :ci, :direccion, :email, 
  :especialidad, :est_civil, :fnac, :genero, :lnac, :nacionalidad, :nombres, :telefono
  
  has_many :asignacion_funcionarios
  
  def completo
    "#{nombres} #{apellidos}"
  end
end
