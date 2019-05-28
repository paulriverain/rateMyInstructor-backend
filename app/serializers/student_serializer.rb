class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :password_digest

  has_many :reviews
  has_many :instructors, through: :reviews
end
