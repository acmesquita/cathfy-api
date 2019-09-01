class List < ApplicationRecord
  belongs_to :board
  has_many :cards, inverse_of: :list

  accepts_nested_attributes_for :cards

  validates :title, presence: true 

  def update_position
    cards.each_with_index do |card, index|
      card.position = index
      card.save
    end
  end
end
