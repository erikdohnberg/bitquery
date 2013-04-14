class DropQueriesTable < ActiveRecord::Migration
  def up
    drop_table :queries
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end