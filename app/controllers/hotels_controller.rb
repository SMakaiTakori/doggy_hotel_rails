class HotelsController < ApplicationController
   
    before_action :logged_in, :current_user

    def index
      
        @dog = current_user
        
        if logged_in
            @hotels = Hotel.all.alphabetize    
        end  

        if params[:search]
           @hotels = Hotel.all.search(params[:search]) unless params[:search].blank?
        end

    end

end
