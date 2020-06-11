class ApplicationController < ActionController::Base
    helper_methods :current_user, :logged_in

    def welcome
    end

    def current_user
        User.find_by(id: session[:user_id])    
    end

    def logged_in
        current_user ? current_user : redirect_to root_path    
    end



end
