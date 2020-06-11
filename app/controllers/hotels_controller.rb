class HotelsController < ApplicationController

    def index
        @hotels = Hotel.all    
          
    end

    def new
        @hotel = Hotel.new
    end



end
