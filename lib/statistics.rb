# Statictics module
module Statistics
  def who_often_takes_the_book
    reader_hash = Hash.new(0)
    @orders.each do |order|
      reader_hash[order.reader.name.to_sym] += 1
    end
    reader = rdr_by_name(reader_hash.key(reader_hash.values.max).to_s)
    reader
  end

  def most_popular_book
    books = bk_count_in_ord(@orders)
    book = bk_by_name(books.key(books.values.max).to_s)
    book
  end

  def who_read_one_of_three
    popular_books = three_m_pop_bks(@orders)
    readers_array = []
    @orders.each do |order|
      book_sym = order.book.title.to_sym
      reader_sym = order.reader.name.to_sym
      next unless popular_books.include?(book_sym)
      readers_array << reader_sym unless readers_array.include?(reader_sym)
    end
    readers_array.size
  end

  # ----------------------------------------------------
  # Private methods

  private

  def get_book_by_name(book_name)
    @books.select { |item| item.title.eql?(book_name) }.first
  end
  alias bk_by_name get_book_by_name

  def get_reader_by_name(reader_name)
    @readers.select { |item| item.name.eql?(reader_name) }.first
  end
  alias rdr_by_name get_reader_by_name

  def get_uniq_books_hash_count_from_orders(orders)
    books_hash = Hash.new(0)
    orders.each do |item|
      books_hash[item.book.title.to_sym] += 1
    end
    books_hash
  end
  alias bk_count_in_ord get_uniq_books_hash_count_from_orders

  def get_three_most_popular_books(orders)
    books = bk_count_in_ord(orders)
    books.sort_by { |_key, value| -value }[0..2].to_h
  end
  alias three_m_pop_bks get_three_most_popular_books
end
