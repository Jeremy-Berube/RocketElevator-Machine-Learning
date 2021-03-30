require 'rails_helper'

RSpec.describe "Lead creation routing", :type => :routing do
    it 'routes /leads to the Leads Controller' do
        expect(post("/leads")).to route_to("leads#create") 
    end
end