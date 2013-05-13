class AddUniqueIndexToConnections < ActiveRecord::Migration
  def change
  	add_index :connections, [:user_id, :connection_code], :unique => true
  end
end
