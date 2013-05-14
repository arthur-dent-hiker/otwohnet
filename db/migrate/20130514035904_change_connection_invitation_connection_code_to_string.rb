class ChangeConnectionInvitationConnectionCodeToString < ActiveRecord::Migration
def change
	change_column :connection_invitations, :connection_code, :string
end
end
