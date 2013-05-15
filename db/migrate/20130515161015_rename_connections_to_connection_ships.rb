class RenameConnectionsToConnectionShips < ActiveRecord::Migration
def change
	rename_table :connections, :connectionships
end
end
