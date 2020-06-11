class ReservationsController < ApplicationController

    before_action :logged_in, :current_user

    def index
        @reservation= Reservation.all
    end

    def new         
        # byebug
        @reservation= Reservation.new  
        @reservation.hotel_id= params[:hotel_id]
        @reservation.dog_id = session[:user_id]  
        @dog = Dog.find_by(id: session[:user_id])
    end

    def create       
        @reservation = Reservation.new(reservation_params)
        @dog = Dog.find_by(id: session[:user_id])  
           if @reservation.save           
            redirect_to dog_reservation_path(@dog, @reservation)
        else
            render :new
        end        
    end

    def show
        @reservation = Reservation.find_by(id: params[:id])
        @dog = Dog.find_by(id:session[:user_id])
    end

    def edit
    end

    def destroy
    end    

    private
     
    def reservation_params
        params.require(:reservation).permit(:date, :time, :hotel_id,:dog_id,
            dog_attributes: [ 
                :id,             
                :name,
                :age,                
                :email,
                :breed,
                :owner,
                :phone,
                :biography
            ])
    end

end
