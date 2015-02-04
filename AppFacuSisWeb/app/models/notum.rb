class Notum < ActiveRecord::Base
  self.table_name = "notas"
  attr_accessible :letra, :nro
end
