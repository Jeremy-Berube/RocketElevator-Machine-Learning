class InterventionsController < ApplicationController

    def update_buildings

        @buildingList = Building.where(customer_id: params[:customer_id])
        render json: {buildings: @buildingList}
        
    end

    def building_search
        
    end

    def create
        
    end

    def index
        
    end
end