class Student < ApplicationRecord
  has_many :courses
  has_many :sections
  validates :name,presence: true
  validates :name,uniqueness: true
  validates :name,length:{in:1..250}
  validates :id_number,presence: true
  validates :id_number,uniqueness: true
  validates :id_number,length:{in:6..20}

  def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  end
end
