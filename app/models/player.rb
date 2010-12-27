class Player < ActiveRecord::Base

  has_many :games

  default_scope :order => "id ASC"

end
