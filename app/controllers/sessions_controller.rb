class SessionsController < ApplicationController

    def new 
        @dog = Dog.new

    end

    def create
        @dog = Dog.find_by(email: params[:dog][:email])
        if @dog && @dog.authenticate(password: params[:dog][:password])
            session[:user_id] = @dog.id
            redirect to dog_path(@dog)
        end

    end


end
