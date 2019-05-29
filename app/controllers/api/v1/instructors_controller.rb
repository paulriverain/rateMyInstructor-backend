class Api::V1::InstructorsController < ApplicationController

  def index
    # byebug
    @instructors = Instructor.all
    render json: @instructors
  end

  def new
    #code
  end

  def create
    #code
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    #code
  end

end
