class ActivitiesController < ApplicationController
    def index
        activities = Activity.all
        render json: activities
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def new 
        activity = Activity.new
        render json: activity
    end 

    def create 
        activity = Activity.create(activity_params)  
        render json: activity
    end
    
    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        render body: nil, status: :no_content
    end

    private

    def activity_params 
        params.require(:activity).permit!
    end 
end
