class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students
  end

  def create
    @student = Student.new(first_name: params[:first_name],last_name: params[:last_name], password: params[:password])
    if @student.save
      render json: @student
    else
      render json: {error: @student.errors.full_messages}, status: 401
    end
  end

end
