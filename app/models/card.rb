class Card < ApplicationRecord
  belongs_to :user
  belongs_to :list, inverse_of: :cards
  
  validates :content, presence: true  

end
