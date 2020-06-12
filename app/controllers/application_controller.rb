class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in

    def welcome
        @dog = current_user
    end

    def current_user
        Dog.find_by(id: session[:user_id])    
    end

    def logged_in
        !!session[:user_id]  
    end

end
