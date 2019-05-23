class Instructor < ApplicationRecord
  has_many :reviews
  has_many :students, through: :reviews
end
