class Student < ApplicationRecord
  has_secure_password

  has_many :reviews
  has_many :instructors, through: :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password_digest, presence: true

  validate :unique_full_name

  def unique_full_name
    #code
    # allFirstNames = Student.all.map{ |name| name.first_name.downcase}
    # allLastNames = Student.all.map { |name| name.last_name.downcase}
    #
    # unless allFirstNames.include?(self.first_name.downcase) && allLastNames.include?(self.last_name.downcase)
    #   nil
    # end
    student = Student.find_by("lower(first_name) = ? AND lower(last_name) = ?", self.first_name.downcase, self.last_name.downcase)

    if student
      self.errors.add(:first_name, "A user with the same first and last name exists")
    end
  end
end
