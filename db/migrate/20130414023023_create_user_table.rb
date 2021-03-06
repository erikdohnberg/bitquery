class CreateUserTable < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string  :provider
      t.string  :uid
      t.string  :name

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end