class ChangeHouseTablesToHouses < ActiveRecord::Migration[5.1]
  def change
    def self.up
  rename_table :old_table_name, :new_table_name
end

def self.down
  rename_table :new_table_name, :old_table_name
end
  end
end
