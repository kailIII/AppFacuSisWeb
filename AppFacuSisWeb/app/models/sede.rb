class Sede < ActiveRecord::Base
  belongs_to :universidad
  belongs_to :facultad
  belongs_to :ciudad
  attr_accessible :nombre
end
