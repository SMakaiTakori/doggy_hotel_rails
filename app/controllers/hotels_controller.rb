class HotelsController < ApplicationController
   
    before_action :logged_in, :current_user

    def index
        @hotels = Hotel.all.alphabetize      
    end

end
