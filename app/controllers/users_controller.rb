class UsersController < ApplicationController
  before_action :current_user

  def index
  	@users = User.all
  	render 'users/index'
  end

  def show
  	@user = User.find_by_id params[:id]
  	render 'users/show'
  end

  def which_user
  	@user = @current_user
    if @user.present?
  	 render 'users/show'
    else
      render 'errors/error'
    end
  end

end
