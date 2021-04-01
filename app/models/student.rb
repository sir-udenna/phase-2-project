class Student < ApplicationRecord
    has_many :lessons
    has_many :grades, through: :lessons
    belongs_to :house

    has_secure_password
    validates :name, uniqueness: true
end
