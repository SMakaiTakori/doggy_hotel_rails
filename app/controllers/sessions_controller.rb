class SessionsController < ApplicationController

    def new 
        @dog = Dog.new
    end

    def omniauth
        @dog = Dog.from_omniauth(auth)
        @dog.save
        session[:user_id] = @dog.id
        redirect_to dog_path(@dog)
    end
      
    def create
        @dog = Dog.find_by(email: params[:dog][:email])
        
        if @dog && @dog.authenticate(params[:dog][:password])
            session[:user_id] = @dog.id
            redirect_to dog_path(@dog)
        else
            flash[:alert] = "User not found."
            redirect_to root_path
        end
    end    

    def destroy   
        if current_user
            session.delete :user_id
            redirect_to root_path
        else
            redirect_to dog_path(@dog)
        end
    end    

    private
      
    def auth
        request.env['omniauth.auth']
    end
  
end



