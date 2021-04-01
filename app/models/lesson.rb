class Lesson < ApplicationRecord
    has_many :students
    has_many :grades, through: :students
    belongs_to :professor
end
