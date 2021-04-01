class LessonsController < ApplicationController

    def index
        @lessons = Lesson.all
    end

    def show
        @lesson = Lesson.find[params:id]
    end


    def new
        @lesson = Lesson.new
        @professors = Professor.all
        @students = Student.all
    end

    def create
        byebug
    end

end
