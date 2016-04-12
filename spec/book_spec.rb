require 'spec_helper'
require 'author.rb'
require 'book.rb'

describe Book do
  before(:all) do
    author = Author.new('Name', 'Biography')
    @book = Book.new('Title', author)
  end

  it 'should be Book class' do
    expect(@book.class).to eq Book
  end

  it 'should has initialize method and getters/setters' do
    expect(@book.title).to eq 'Title'
    expect(@book.author.name).to eq 'Name'
    @book.title = 'Another title'
    @book.author.name = 'Another author'
    expect(@book.title).to eq 'Another title'
    expect(@book.author.name).to eq 'Another author'
  end
end
