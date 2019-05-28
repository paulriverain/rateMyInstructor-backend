class Student < ApplicationRecord
  has_secure_password

  has_many :reviews
  has_many :instructors, through: :reviews
end
