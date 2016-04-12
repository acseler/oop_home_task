require 'spec_helper'
require 'library.rb'
require 'file_helper.rb'

describe Library do
  before(:all) do
    @library = FileHelper.read_library_from_file('test.data')
  end

  it 'should be the Library class' do
    expect(@library.class).to eq Library
  end

  it 'should has initialize method and getters/setters' do
    expect(@library.books.size).to eq 5
    expect(@library.orders.size).to eq 16
    expect(@library.readers.size).to eq 8
    expect(@library.authors.size).to eq 3
    author = Author.new('A', 'B')
    book = Book.new('B', author)
    address = Address.new('c', 's', 'h')
    reader = Reader.new('n', 'e', address)
    @library.authors << author
    @library.books << book
    @library.readers << reader
    @library.orders << Order.new(book, reader, Time.new(2013))
    expect(@library.books.size).to eq 6
    expect(@library.orders.size).to eq 17
    expect(@library.readers.size).to eq 9
    expect(@library.authors.size).to eq 4
  end

  describe '.who_often_takes_the_book' do
    it 'should return reader with name Vasya' do
      expect(@library.who_often_takes_the_book.name).to eq 'Vasya'
    end
  end

  describe '.most_popular_book' do
    it 'should return book with title Dig' do
      expect(@library.most_popular_book.title).to eq 'Dig'
    end
  end

  describe '.how_many_people_order_one_of_most_popular_book' do
    it 'should return 8' do
      expect(@library.who_read_one_of_three).to eq 8
    end
  end
end
