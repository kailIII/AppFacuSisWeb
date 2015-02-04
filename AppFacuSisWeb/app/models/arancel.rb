class Arancel < ActiveRecord::Base
  self.table_name = "aranceles"
  attr_accessible :nombre
end
