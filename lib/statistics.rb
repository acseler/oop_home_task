# Statictics module
module Statistics
  def who_often_takes_the_book
    @orders.group_by { |order| order.reader }.sort_by { |_, v| v.size }.last[0].name
  end

  def most_popular_book
    @orders.group_by { |order| order.book }.sort_by { |_, v| -v.size}.first[0].title
  end

  def who_read_one_of_three
    bk_count_in_ord[0..2].to_h.values.flatten.uniq { |order| order.reader }.size
  end

end
