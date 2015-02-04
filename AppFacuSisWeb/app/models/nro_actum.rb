class NroActum < ActiveRecord::Base
  self.table_name = "nro_actas"
  attr_accessible :nro_acta, :tomo
end
