class ChangeScenarioDatetimeToScenarioDate < ActiveRecord::Migration
  def self.up
    change_column :scenarios, :date, :date
    rename_column :scenarios, :date, :scenario_date
  end

  def self.down
    rename_column :scenarios, :scenario_date, :date
    change_column :seenarios, :date, :datetime
  end
end
