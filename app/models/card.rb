class Card < ApplicationRecord
  belongs_to :user
  has_many :labels

  validates :content, presence: true  
  
end
