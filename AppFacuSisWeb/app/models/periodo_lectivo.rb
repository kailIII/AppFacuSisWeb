class PeriodoLectivo < ActiveRecord::Base
  attr_accessible :periodo
  
  has_many :cursos
  
  def completo
    "#{periodo}"
  end
end
