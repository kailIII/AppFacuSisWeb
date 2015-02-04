class AsignacionFuncionario < ActiveRecord::Base
  belongs_to :sede
  belongs_to :funcionario
  belongs_to :cargo
  attr_accessible :nombre
end
