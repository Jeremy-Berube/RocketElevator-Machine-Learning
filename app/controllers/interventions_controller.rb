class InterventionsController < ApplicationController
    require 'zendesk_api'

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

       if intervention.save!
            create_ticket()
            redirect_to '/pages/intervention'
       end
    end

    
    def create_ticket
        client = ZendeskAPI::Client.new do |config|
            config.url = ENV['ZENDESK_URL']
            config.username = ENV['ZENDESK_USERNAME']
            config.token = ENV['ZENDESK_TOKEN']
        end
        ZendeskAPI::Ticket.create!(client, 
            :subject => "New Intervention", 
            :comment => { 
              :value => "#{current_user.employee.first_name} has requested an intervention for #{params[:full_name_company_contact]}.\n\n
              Intervention summary:\n
              - Building: #{params[:building_id]}
              - Battery: #{params[:battery_id]}
              - Column: #{params[:column_id]}
              - Elevator: #{params[:elevator_id]}\n\n
              Employee: #{params[:employee_id]} has been assigned to the task.\n
              Description: #{params[:description]}"
              }, 
            :priority => "urgent",
            :type => "task"
        )
    end

end