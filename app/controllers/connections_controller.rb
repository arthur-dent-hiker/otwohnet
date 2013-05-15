class ConnectionsController < ApplicationController
	def create
		@connectionship =current_user.connectionships.build(:friend_id => params[:friend_id])
		if @connectionship.save
			redirect_to root_url, :notice=>"Connection created"
		else
			redirect_to root_url, :notice=>"Connection failed"
		end
	end

	def new
		@connection_invite=ConnectionInvitation.find_by_connection_code(params[:id])
	end
end
