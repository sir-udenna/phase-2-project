class Professor < ApplicationRecord
    has_many :lessons
    has_many :grades, through: :lessons

    has_secure_password
    validates :name, uniqueness: true
end
