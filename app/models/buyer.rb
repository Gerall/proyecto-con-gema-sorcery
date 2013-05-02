class Buyer < ActiveRecord::Base
  attr_accessible :apellidos, :direccion, :fch_ncto, :nombres

  validates :nombres, :presence => true,
  :length => { :maximum => 30 }
  
   validates :apellidos, :presence => true,
  :length => { :maximum => 30 }

  validates_presence_of :direccion 

  validates_presence_of :fch_ncto
end
