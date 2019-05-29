class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

 #  def encode_token(payload)
 #   # don't forget to hide your secret in an environment variable
 #   JWT.encode(payload, 'secret_code')
 #  end
 #
 #  def auth_header
 #    request.headers['Authorization']
 #  end
 #
 #  def decoded_token
 #    if auth_header
 #      studentToken = auth_header.split(' ')[1]
 #      begin
 #        JWT.decode(studentToken, 'secret_code', true, algorithm: 'HS256')
 #      rescue JWT::DecodeError
 #        nil
 #      end
 #    end
 #  end
 # def current_user
 #   if decoded_token
 #      # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
 #      # or nil if we can't decode the token
 #     student_id = decoded_token[0]['student_id']
 #     @student = Student.find_by(id: student_id)
 #   end
 # end
 # # def logged_in?
 # #   !!current_user
 # # end
 # # def authorized
 # #    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
 # #  end


end
