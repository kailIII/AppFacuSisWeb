class PlanCurricular < ActiveRecord::Base
  self.table_name = "plan_curricular"
  
  attr_accessible :nombre
end
