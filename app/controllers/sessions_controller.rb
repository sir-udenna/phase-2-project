class SessionsController < ApplicationController
    
    def new
        @student = Student.new
        @professor = Professor.new
    end

    def create
        @student = Student.find_by(name: params["student"]["name"])
        if @student && @student.authenticate(params["student"]["password"])
        session[:id] = @student.id
        redirect_to @student
        else
        flash[:errors] = "Password is incorrect"
        redirect_to login_path
    end
end

end
