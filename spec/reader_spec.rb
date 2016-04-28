require 'spec_helper'
require 'reader.rb'

describe Reader do
  before(:all) do
    address = Address.new('Dnepropetrovsk', 'Kharkovskaya st.', '21')
    @reader = Reader.new('Vasya', 'asd@gmail.com', address)
  end

  it 'should be @reader class' do
    expect(@reader.class).to eq Reader
  end

  it 'should has initialize method and getters/setters' do
    expect(@reader.name).to eq 'Vasya'
    expect(@reader.email).to eq 'asd@gmail.com'
    expect(@reader.city).to eq 'Dnepropetrovsk'
    expect(@reader.street).to eq 'Kharkovskaya st.'
    expect(@reader.house).to eq '21'
    @reader.name = 'Ben'
    @reader.email = 'another@gmail.com'
    @reader.city = 'Lviv'
    @reader.street = 'Castle st.'
    @reader.house = '55'
    expect(@reader.name).to eq 'Ben'
    expect(@reader.email).to eq 'another@gmail.com'
    expect(@reader.city).to eq 'Lviv'
    expect(@reader.street).to eq 'Castle st.'
    expect(@reader.house).to eq '55'
  end
end
