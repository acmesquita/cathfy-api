class List < ApplicationRecord
  belongs_to :cards

  validates :title, presence :true 
  
end
