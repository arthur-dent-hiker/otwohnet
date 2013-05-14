class ConnectionInvitationsController < ApplicationController
  def index
  	@connection_invitations=ConnectionInvitation.where(:user_id => current_user.id).paginate(:page =>params[:page], :per_page => 10)
  end

  def make
  	@count=params[:connection_invitation][:count].to_i
  	@count.times {
  		u=ConnectionInvitation.new
  		u.user_id=current_user.id
  		u.connection_code=SecureRandom.hex(8)
  		u.save
  	}
  	redirect_to root_path, :notice=>"Connection invitations created"
  end
end
