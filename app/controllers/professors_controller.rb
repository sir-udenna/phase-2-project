class ProfessorsController < ApplicationController

    def index
        @professors = Professor.all
    end

    def show
        @professor = Professor.find(params[:id])
    end

    def new
        @professor = Professor.new
    end

    def create
        @professor = Professor.create(professor_params)
        redirect_to professors_path(@professors)
    end

    def professor_params
        params.require("professor").permit(["name"], ["subject"])
    end

    def edit
        @professor = Professor.find(params[:id])
    end

    def update
        byebug
    end

end
