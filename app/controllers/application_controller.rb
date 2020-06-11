class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in

    def welcome
    end

    def current_user
        Dog.find_by(id: session[:user_id])    
    end

    def logged_in
        # if current_user 
        #      current_user
        # else
        #     redirect_to root_path
        # end    

        !!session[:user_id]  
    end



end
