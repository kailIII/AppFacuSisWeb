class Oportunidad < ActiveRecord::Base
  self.table_name = "oportunidades"
  
  attr_accessible :nombre
end
