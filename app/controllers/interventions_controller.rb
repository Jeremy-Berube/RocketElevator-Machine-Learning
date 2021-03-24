class InterventionsController < ApplicationController

    def update_buildings
        @buildingList = Building.where(customer_id: params[:customer_id])
        render json: {buildings: @buildingList}
    end

    def update_battery
        @batteryList = Battery.where(building_id: params[:building_id])
        render json: {batteries: @batteryList}
    end

    def update_column
        @columnList = Column.where(battery_id: params[:battery_id])
        render json: {columns: @columnList}
    end

    def update_elevator
        @elevatorList = Elevator.where(column_id: params[:column_id])
        render json: {elevators: @elevatorList}
    end

    def create
       intervention = Intervention.new
       intervention.author = current_user.id
       intervention.customer_id = params[:customer_id]
       intervention.building_id = params[:building_id]
       intervention.battery_id = params[:battery_id]
       intervention.column_id = params[:column_id]
       intervention.elevator_id = params[:elevator_id]
       intervention.employee_id = params[:employee_id]
       intervention.report = params[:description]
       intervention.save!

       if intervention.save
        flash[:alert] = "GG NO REMATCH"
        # redirect_to '/pages/intervention'
       end
    end

    def index
        
    end
end