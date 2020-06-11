class DogsController < ApplicationController
    
    before_action :logged_in, except: [:new, :create, :welcome]

    def new
        @dog = Dog.new        
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            session[:user_id] = @dog.id
            redirect_to dog_path(@dog)
        else
            render :new
        end
    end
        
    def show
        @dog = Dog.find_by(id: params[:id])
        
        if !@dog
            redirect_to root_path
        end
    end    
    

    private 

    def dog_params
        params.require(:dog).permit(:name, :age, :email, :breed, :owner, :phone, :biography, :password, :password_confirmation)
    
    end


end
