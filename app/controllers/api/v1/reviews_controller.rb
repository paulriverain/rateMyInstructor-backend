class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end


  def create
    #code
    # byebug
    @review = Review.create(student_id: params[:student_id], comment: params[:comment], instructor_id: params[:instructor_id], rating: params[:rating])
    render json: @review
  end


  def update
    #code
    @editedReview = Review.find(params[:id])
    @editedReview.update(student_id: params[:student_id], comment: params[:comment], instructor_id: params[:instructor_id], rating: params[:rating])
    response = {
      message: "Successfully edited your review!",

      review: {
        id: params[:id],
        student_id: params[:student_id],
        comment: params[:comment],
        instructor_id: params[:instructor_id],
        rating: params[:rating],
        updated_at: "2019-05-30T17:19:29.002Z",

        student:{
          id: @editedReview.student.id,
          first_name:  @editedReview.student.first_name,
          last_name:  @editedReview.student.last_name,
          password_digest: @editedReview.student.password,
        },

        instructor: {
          first_name: @editedReview.instructor.first_name,
          last_name: @editedReview.instructor.last_name,
          num_mods_taught: @editedReview.instructor.num_mods_taught,
          bootcamp_name: @editedReview.instructor.bootcamp_name,
        }
      }
     }

     respond_to do |format|
       format.json  { render :json => response }
     end
  end

  def destroy
    #code
    @review = Review.find(params[:id])
    @review.destroy
    render json: {message: "Successfully deleted your review!"}
  end

end
