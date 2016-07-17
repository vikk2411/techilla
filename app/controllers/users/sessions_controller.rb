class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

 skip_before_filter  :verify_authenticity_token

  def create
    @user = User.find_by_email(params[:user][:email].downcase.strip)
    unless @user
        @errors = { email: ["Member not found"] }
        render "errors/record_not_found"     #create files
    end

      if @user and @user.valid_password?(params[:user][:password])
        (inactive_account(@user) and return) if !@user.confirmed? or @user.blocked?
        render "errors/login_success"      #create files
      else
        @errors = { email: ["Invalid password or email"] }
        render "errors/invalid_credentials"
      end
  end

  protected

    # def inactive_account(_resource)
    #   warden.custom_failure!
    #   if !_resource.confirmed?
    #     @errors = { email: ["Please confirm your account before login"] }
    #     render "api/angular/sessions/confirmation_pending"
    #   elsif _resource.blocked?
    #     @errors = { email: ["Account blocked, please contact support team"] }
    #     render "api/angular/sessions/blocked_account"
    #   end
    # end
end
