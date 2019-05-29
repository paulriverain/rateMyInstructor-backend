class Api::V1::ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def new
    #code

  end

  def create
    #code
    # byebug
    @review = Review.create(student_id: params[:student_id], comment: params[:comment], instructor_id: params[:instructor_id], rating: params[:rating])
    render json: @review
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
