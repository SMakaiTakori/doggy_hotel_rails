class ReservationsController < ApplicationController

    before_action :logged_in, :current_user

    def index
        @reservation= Reservation.all
    end

    def new         
        # byebug
        @reservation= Reservation.new  
        @reservation.hotel_id= params[:hotel_id]        
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @dog = Dog.find_by(id: session[:user_id])
        
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

    private
     
    def reservation_params
        params.require(:reservation).permit(:date, :time, :hotel_id, :user_id)
    end

end
