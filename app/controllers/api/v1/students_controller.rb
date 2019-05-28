class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students
  end



  def create
    @student = Student.create(first_name: params[:first_name],last_name: params[:last_name], password: params[:password])
    # byebug
    render json: @student
  end



# def password=(password)
#  encrypted = encrypt(password)
#  self.update(password_digest: encrypted)
# end

# def authenticate(pw)
#  my_encrypt(pw) == self.password_digest
# end


end
