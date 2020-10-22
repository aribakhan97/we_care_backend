class MoodsController < ApplicationController

    def index
        moods = Mood.all
        render json: moods
    end

    def show
        mood = Mood.find(params[:id])
        render json: mood
    end

    def new 
        mood = Mood.new
        render json: mood
    end 

    def create 
        mood = Mood.create(mood_params)  
        render json: mood
    end
    
    def destroy
        mood = Mood.find(params[:id])
        mood.destroy
        render body: nil, status: :no_content
    end

    private

    def mood_params 
        params.require(:mood).permit!
    end 
    
end
