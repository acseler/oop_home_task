# Statictics module
module Statistics
  def who_often_takes_the_book
    @orders.group_by { |order| order.reader }.sort_by { |k, v| v.size }.last[0].name
  end

  def most_popular_book
    bk_count_in_ord(@orders).first[0].title
  end

  def who_read_one_of_three
    popular_books = three_m_pop_bks(@orders)
    @orders.inject([]) do |res, order|
       if popular_books.include?(order.book) && !res.include?(order.reader)
         res << order.reader
       else
         res
       end
    end.size
  end

  private

  def get_book_by_name(book_name)
    @books.select { |item| item.title.eql?(book_name) }.first
  end
  alias bk_by_name get_book_by_name

  def get_uniq_books_from_orders(orders)
    orders.group_by { |order| order.book}.sort_by { |_k, v| -v.size}
  end
  alias bk_count_in_ord get_uniq_books_from_orders

  def get_three_most_popular_books(orders)
    bk_count_in_ord(orders)[0..2].to_h
  end
  alias three_m_pop_bks get_three_most_popular_books
end
