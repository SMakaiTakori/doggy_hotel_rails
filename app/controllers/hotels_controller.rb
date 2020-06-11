class HotelsController < ApplicationController

    def index
        @hotels = Hotel.all    
          
    end

    def new
        @hotel = Hotel.find_by(id: params[:hotel_id])
    end



end
