class HotelsController < ApplicationController

    def index
        @hotels = Hotel.all.alphabetize      
    end

end
