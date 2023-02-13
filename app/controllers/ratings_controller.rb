class RatingsController < ApplicationController

    def index
    # There isnt going to be an index because I dont want there to be a 
    # list of the ratings of multiple users combined or multiple instances 
    # of a single users ratings but I am defining it to leave the option 
    # open for the future. 
        @ratings = Rating.all
    end

    def new
        @rating = Rating.new
    end

    def create
        @rating = Rating.new(rating: params[:rating][:rating], elaborations: params[:rating][:elaborations])
            if @rating.save 
                redirect_to ratings_path
                flash[:message]= "Rating was successfully saved!"

            else
                render :new, status: :unprocessable_entity
        
            end
    end

    def experimental

    end


end
