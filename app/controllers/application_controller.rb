class ApplicationController < ActionController::Base
    add_flash_types :success, :danger
    helper_method :current_user

    def current_user
        @current_user ||= User.find session[:user_id] if session[:user_id]
    end

    def authorize
        redirect_to login_path if current_user.nil?
    end

    def guest
        redirect_to :home if !current_user.nil?
    end
end
