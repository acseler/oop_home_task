require 'spec_helper'
require 'address.rb'

describe Address do
  before(:all) do
    @address = Address.new('Dnepr', 'Artema st.', 21)
  end

  it 'should be the Address class' do
    expect(@address.class).to eq Address
  end

  it 'should has initializer and getters/setters' do
    expect(@address.city).to eq 'Dnepr'
    expect(@address.street).to eq 'Artema st.'
    expect(@address.house).to eq 21
    @address.city = 'Lviv'
    @address.street = 'Street st.'
    @address.house = 11
    expect(@address.city).to eq 'Lviv'
    expect(@address.street).to eq 'Street st.'
    expect(@address.house).to eq 11
  end
end
