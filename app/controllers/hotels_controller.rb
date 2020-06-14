class HotelsController < ApplicationController

    def index
        @hotels = Hotel.all.alphebetize      
    end

end
