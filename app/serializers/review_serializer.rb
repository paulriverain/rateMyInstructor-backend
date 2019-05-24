class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :instructor_id, :rating, :comment, :updated_at

  belongs_to :student
  belongs_to :instructor
end
