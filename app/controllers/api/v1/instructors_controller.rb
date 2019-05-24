class Api::V1::InstructorsController < ApplicationController

  def index
    @instructors = Instructor.all
    render json: @instructors
  end

end
