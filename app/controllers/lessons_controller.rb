class LessonsController < ApplicationController

    def index
        @lessons = Lesson.all
    end


    def new
        @lesson = Lesson.new
        @professors = Professor.all
    end

    def create
        byebug
    end

end
