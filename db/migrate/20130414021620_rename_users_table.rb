class RenameUsersTable < ActiveRecord::Migration
  def self.up
    rename_table :users, :instructors
  end

  def self.down
    rename_table :instructors, :users
  end
end