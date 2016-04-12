require File.join(File.dirname(__FILE__), 'statistics.rb')

# Library class
class Library
  include Statistics
  attr_accessor :books, :orders, :readers, :authors

  def initialize(books, orders, readers, authors)
    @books = books
    @orders = orders
    @readers = readers
    @authors = authors
  end
end
