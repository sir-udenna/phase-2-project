class LessonsController < ApplicationController

    def index
        @lessons = Lesson.all
    end

    def show
        @lesson = Lesson.find(params[:id])
    end


    def new
        @lesson = Lesson.new
        @professors = Professor.all
        @students = Student.all
    end

    def create
        @lesson = Lesson.create(lesson_params)
        redirect_to student_path(@student)
    end

    def lesson_params
        params.require("lesson").permit(["lesson_name"])
    end


end

