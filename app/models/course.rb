class Course < ApplicationRecord
	has_many :sections
	validates :name,presence: true
	validates :name,uniqueness: true
	validates :name,length:{in:1..250}
    validates :department,presence: true
	validates :department,length:{in:1..250}
	validates :number,presence: true
	validates :number,length:{in:1..10}
	validates :number,numericality:{only_integer:true}
	validates :credit_hours,presence: true
    validates :credit_hours,length:{maximum: 1 }
	validates :credit_hours,numericality:{only_integer:true}
	def self.search(search)
    where("name LIKE ?", "%#{search}%") 
    end
end
