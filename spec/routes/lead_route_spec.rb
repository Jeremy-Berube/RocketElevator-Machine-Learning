require 'rails_helper'

# This test will validate the routing when a user creates a lead
RSpec.describe "Lead creation routing", :type => :routing do
    it 'routes /leads to the Leads Controller' do
        expect(post("/leads")).to route_to("leads#create") 
    end
end