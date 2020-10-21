class MoodsController < ApplicationController

    def index
        moods = Mood.all
        render json: moods
    end

    def new 
        mood = Mood.new
        render json: mood
    end 

    def create 
        mood = Mood.create(mood_params)  
        render json: mood
    end 

    private

    def mood_params 
        params.require(:mood).permit!
    end 
    
end
