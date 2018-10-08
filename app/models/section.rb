class Section < ApplicationRecord
  belongs_to :course
  	validates :semester,presence: true
    validates :number,presence: true
	validates :number,length:{in:1..10}
	validates :number,numericality:{only_integer:true}
	validates :number,presence: true
	validates :course,presence: true
	validates :room_number,presence: true
    validates :room_number,length:{maximum: 5 }
	validates :room_number,numericality:{only_integer:true}
  def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  end
end
