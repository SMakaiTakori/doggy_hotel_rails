class HotelsController < ApplicationController
   
    before_action :logged_in, :current_user

    def index
        @dog = current_user
        if logged_in
        @hotels = Hotel.all.alphabetize    
        end  

    end

end
