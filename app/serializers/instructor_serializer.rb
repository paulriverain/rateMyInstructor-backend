class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :num_mods_taught, :bootcamp_name


  has_many :reviews
  has_many :students, through: :reviews
end
