class ReservationsController < ApplicationController

    before_action :logged_in, :current_user

    def index
        @reservation= Reservation.all
    end

    def new 
        
        @reservation= Reservation.new  
        @reservation.hotel_id= params[:hotel][:id]
        
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @dog = Dog.find_by(id: params[:dog][:user_id])
        if @reservation.save
            redirect_to dog_reservation_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def destroy
    end    


end
