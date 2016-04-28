require 'spec_helper'
require 'order.rb'
require 'reader.rb'
require 'book.rb'

describe Order do
  before(:all) do
    address = Address.new('Dnepropetrovsk', 'Kharkovskaya st.', '21')
    book = Book.new('Simple Title', Author.new('Author', 'Biography'))
    reader = Reader.new('Vasya', 'asd@gmail.com', address)
    @date = Time.now
    @order = Order.new(book, reader, @date)
  end

  it 'should be a Order class' do
    expect(@order.class).to eq Order
  end

  it 'should has initialize method and getters/setters' do
    expect(@order.book.title).to eq 'Simple Title'
    expect(@order.reader.name).to eq 'Vasya'
    expect(@order.date).to eq @date
    another_book = Book.new('Another title', 'Another Author')
    another_address = Address.new('Nikolaev', 'Nikolaeskaya st.', '46')
    another_reader = Reader.new(
      'John Corner',
      'jora@gmail.com',
      another_address
    )
    another_date = Time.new(2001, 4, 26, 2, 2, 33, '+02:00')
    @order.book = another_book
    @order.reader = another_reader
    @order.date = another_date
    expect(@order.book.title).to eq 'Another title'
    expect(@order.reader.name).to eq 'John Corner'
    expect(@order.date.to_s).to eq '2001-04-26 02:02:33 +0200'
  end
end
