class BuildingController < ApplicationController
    def getAll
        @Building = Building.getAll
    end
end
