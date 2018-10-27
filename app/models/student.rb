class Student < ApplicationRecord
    has_and_belongs_to_many :sections

    validates :student, presence: true
    validates :student, length: {minimum: 2, maximum: 50}
    validates :id_number, presence: true
    validates :id_number, uniqueness: { message: "ID already in use" }
end
