class Student < ApplicationRecord
    has_many :lessons
    has_many :grades, through: :lessons
    belongs_to :house
end
