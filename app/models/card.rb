class Card < ApplicationRecord
  belongs_to :user
  belongs_to :list, inverse_of: :cards
  has_many :items
  
  validates :content, presence: true  

end
