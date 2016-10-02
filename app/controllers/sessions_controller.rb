class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:destroy]

  def create
	  begin
	    @user = User.from_omniauth(request.env['omniauth.auth'])
	    session[:user_id] = @user.id
	  rescue
	    render 'errors/unexpected_error'
	  end
	   	redirect_to root_path
	end

   def destroy
	  if current_user
	    session.delete(:user_id)
	    flash[:success] = 'See you!'
	  end
	  render 'sessions/logout'
	end
end