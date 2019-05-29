class Api::V1::AuthController < ApplicationController
  def create
    #code
    @student = Student.find_by(first_name: params[:first_name], last_name: params[:last_name])
    if @student && @student.authenticate(params[:password])
      token = JWT.encode({id: @student.id, first_name: @student.first_name, last_name: @student.last_name}, 'secret_code', "HS256")
      render json: {id: @student.id, first_name:  @student.first_name, last_name:  @student.last_name, token: token}
    else
      render json: {error: 'Invalid name or password'}
    end
  end

  def show
    token = request.headers['Authenticate']
    decoded = JWT.decode(token, 'secret_code', true, { algorithm: "HS256" }).first
    id = decoded["id"]

    @student = Student.find_by(id: id)
    if @student
      render json: {id: @student.id, first_name: @student.first_name, last_name: @student.last_name}
    else
      render json: {error: "Could not authenticate"}
    end
  end

end
