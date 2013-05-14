class ConnectionRenameToConnectionInvitation < ActiveRecord::Migration
  def change
  	rename_table :connections, :connection_invitations
  end
end
