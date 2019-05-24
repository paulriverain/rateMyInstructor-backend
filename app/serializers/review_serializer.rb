class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :instructor_id, :rating, :comment

  belongs_to :student
  belongs_to :instructor
end
