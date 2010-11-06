class CreateScenarios < ActiveRecord::Migration
  def self.up
    create_table :scenarios do |t|
      t.string :code, :name, :description
      t.timestamps
    end
  end

  def self.down
    drop_table :scenarios
  end
end
