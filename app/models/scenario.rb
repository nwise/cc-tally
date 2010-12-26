class Scenario < ActiveRecord::Base
  default_scope :order => "code ASC"
end
