require 'rails_helper'

describe User do

  it 'アカウント正しい' do
    user = User.new(email: 'taka@taka.com',
                    name: 'taka',
                    password: 'taka1125',
                    password_confirmation: 'taka1125')
    expect(user).to be_valid
  end
  
  it 'email invalid' do
    user = User.new(email: 'aaa',
                    name: 'taka',
                    password: 'taka1125',
                    password_confirmation: 'taka1125')
    expect(user.invalid?).to be true
  end
  
  it 'password_confirmation is wrong' do
    user = User.new(email: 'taka@taka.com',
                    name: 'taka',
                    password: 'taka1125',
                    password_confirmation: 'tako1125')
    expect(user).to be_invalid
  end
                    
end