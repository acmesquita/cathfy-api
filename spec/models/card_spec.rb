require 'rails_helper'

RSpec.describe Card, type: :model do
  
  context "criando um card" do
    it 'sem parâmetros' do
      expect { Card.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end

    it 'sem user e sem lista' do
      card = Card.new({content: 'Teste', description: 'Teste teste teste'})
      expect(card.valid?).to be false
    end
  end
  
end
