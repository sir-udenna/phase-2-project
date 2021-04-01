class Student < ApplicationRecord
    has_many :grades
    has_many :lessons, through: :grades
    belongs_to :house

    has_secure_password
    validates :name, uniqueness: true
end
