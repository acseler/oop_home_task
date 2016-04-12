# Order class
class Order
  attr_accessor :book, :reader, :date

  def initialize(book, reader, date = Time.now)
    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "Order => {#{@book}, #{@reader}, date : #{@date}}"
  end
end
