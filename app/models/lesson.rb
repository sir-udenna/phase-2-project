class Lesson < ApplicationRecord
    has_many :grades
    has_many :students, through: :grades
    belongs_to :professor
end
