class Student < ApplicationRecord
  has_many :reviews
  has_many :instructors, through: :reviews
end
