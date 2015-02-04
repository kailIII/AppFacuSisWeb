class Sede < ActiveRecord::Base
  
  belongs_to :universidad
  belongs_to :facultad
  belongs_to :ciudad
  
  attr_accessible :nombre, :universidad_id, :facultad_id, :ciudad_id
end
