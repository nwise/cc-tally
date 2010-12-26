class AddDateAndLocationToScenario < ActiveRecord::Migration
  def self.up
    add_column :scenarios, :location, :string
    add_column :scenarios, :date, :datetime
  end

  def self.down
    remove_column :scenarios, :date
    remove_column :scenarios, :location
  end
end
