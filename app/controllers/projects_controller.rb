class ProjectsController < ApplicationController 
    def show
        binding.pry
        @project = Project.find(params[:id])
        # @challenge = Challenge.find(params[:id])
    end
end