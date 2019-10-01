require 'rails_helper'

RSpec.describe User, type: :model do
  context "criando usuário" do
    it 'sem parâmetros' do
      expect { User.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
    it 'inválido' do
      expect { User.create!({email: 'teste@teste.com', password: '12345678'}) }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it 'válido' do
      user =  User.create!({email: 'teste@teste.com', password: '12345678', username: 'teste'})
      expect(user).to be_id
    end
  end

  context "validando usuário" do
    let(:user) { User.new() } 
    it 'presença do email' do
      expect(user.valid?).to eq false
      expect(user.errors.messages[:email].first).to eq "can't be blank"
    end
    it 'presença da senha' do
      expect(user.valid?).to eq false
      expect(user.errors.messages[:password].first).to eq "can't be blank"
    end
    it 'presença da username' do
      expect(user.valid?).to eq false
      expect(user.errors.messages[:username].first).to eq "can't be blank"
    end
    it 'email único' do
      user_1 =  User.create!({email: 'teste@teste.com', password: '12345678', username: 'teste'})
      user_2 = User.new({email: 'teste@teste.com', password: '12345678', username: 'teste'})
      expect(user_2.valid?).to eq false
      expect(user_2.errors.messages[:email].first).to eq "has already been taken"
      
    end
    it 'username único' do
      user_1 =  User.create!({email: 'teste@teste.com', password: '12345678', username: 'teste'})
      user_2 = User.new({email: 'teste@teste.com', password: '12345678', username: 'teste'})
      expect(user_2.valid?).to eq false
      expect(user_2.errors.messages[:username].first).to eq "has already been taken"
      
    end
  end
  
end
