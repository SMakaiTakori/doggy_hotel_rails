class HotelsController < ApplicationController

    def index
        @hotel = Hotel.all        
    end



end
