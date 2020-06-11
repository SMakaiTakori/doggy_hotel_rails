class SessionsController < ApplicationController

    def new 
        @dog = Dog.new
    end

    def create
        @dog = Dog.find_by(email: params[:dog][:email])
        
        if @dog && @dog.authenticate(params[:dog][:password])
            session[:user_id] = @dog.id
            redirect_to dog_path(@dog)
        else
            redirect_to root_path
        end
    end

    def destroy   
        session.delete :user_id
        redirect_to root_path
    end    


end



