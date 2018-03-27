class Course < ApplicationRecord

has_many :students, through: :courses_students

end
