class StudentsController < ApplicationController
    before_action :current_user, only: [:show]
    before_action :not_logged_in, only: [:show]
    
    
    def index
        @students = Student.all
    end
    
    def show
        # @student = Student.find(params[:id])
        # @lessons = Lesson.all
        @mydays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        if @student.valid?
        @student.save
        session[:id] = @student.id
        redirect_to student_path(@student)
        else
        flash[:errors] = @student.errors.full_messages
        redirect_to new_student_path
    end
end

    def student_params
        params.require("student").permit(["name"], ["house_id"],["password"], ["password_confirmation"])
    end
end
