class DogsController < ApplicationController

    def new
        @dog = Dog.new        
    end

    def create
        @dog = Dog.new(dog_params)
        @dog.save
        redirect_to dog_path(@dog)
    
    end

    private 

    def dog_params
        params.require(:dog).permit(:name, :age, :breed, :owner, :phone, :biography, :password_digest, :password_confirmation)
    
    end


end
