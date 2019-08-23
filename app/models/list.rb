class List < ApplicationRecord
  has_many :cards

  validates :title, presence: true 
  
end
