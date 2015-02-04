class MallaCurricular < ActiveRecord::Base
  
  self.table_name = "malla_curriculares"
  
  belongs_to :plan_curricular
  belongs_to :facultad
  belongs_to :curso
  belongs_to :materia
  # attr_accessible :title, :body
end
