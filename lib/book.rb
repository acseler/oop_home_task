# The Book class
class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def to_s
    "Book => {title : #{@title}, #{@author}}"
  end
end
