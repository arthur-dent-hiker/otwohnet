class Renamefriendcolumninconnectionships < ActiveRecord::Migration
  def change
  	rename_column :connectionships, :friend_id, :connection_id
  end
end
