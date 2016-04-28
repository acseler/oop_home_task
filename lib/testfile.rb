require 'yaml'
require File.join(File.dirname(__FILE__), "author.rb")
require File.join(File.dirname(__FILE__), "book.rb")
require File.join(File.dirname(__FILE__), "order.rb")
require File.join(File.dirname(__FILE__), "library.rb")
require File.join(File.dirname(__FILE__), "reader.rb")
require File.join(File.dirname(__FILE__), "address.rb")

author1 = Author.new('Matz', 'Programmer')
author2 = Author.new('Matsumoto', 'Developer')
author3 = Author.new('Hiro', 'Japanise')

authors = [author1, author2, author3]

book1 = Book.new('Dig', author1)
book2 = Book.new('Compare', author2)
book3 = Book.new('Equal', author3)
book4 = Book.new('Include', author1)
book5 = Book.new('Collect', author2)

books = [book1, book2, book3, book4, book5]

address1 = Address.new('Dnepr', 'Artem st.', 12)
address2 = Address.new('Lviv', 'Street st.', 21)

reader1 = Reader.new('Vasya', 'myemail@gmail.com', address1)
reader2 = Reader.new('Petya', 'myemail@gmail.com', address2)
reader3 = Reader.new('Ivan', 'myemail@gmail.com', address1)
reader4 = Reader.new('Kolya', 'myemail@gmail.com', address2)
reader5 = Reader.new('Danila', 'myemail@gmail.com', address1)
reader6 = Reader.new('Gektor', 'myemail@gmail.com', address2)
reader7 = Reader.new('Mehoil', 'myemail@gmail.com', address1)
reader8 = Reader.new('Genna', 'myemail@gmail.com', address2)

readers = [reader1, reader2, reader3, reader4, reader5, reader6, reader7, reader8]

order1 = Order.new(book1, reader1, Time.new(2012, 10, 11))
order2 = Order.new(book1, reader2, Time.new(2012, 10, 11))
order3 = Order.new(book1, reader3, Time.new(2012, 10, 11))
order4 = Order.new(book1, reader4, Time.new(2012, 10, 11))
order5 = Order.new(book1, reader5, Time.new(2012, 10, 11))
order6 = Order.new(book2, reader1, Time.new(2012, 10, 11))
order7 = Order.new(book2, reader6, Time.new(2012, 10, 11))
order8 = Order.new(book2, reader7, Time.new(2012, 10, 11))
order9 = Order.new(book2, reader3, Time.new(2012, 10, 11))
order10 = Order.new(book3, reader1, Time.new(2012, 10, 11))
order11 = Order.new(book3, reader8, Time.new(2012, 10, 11))
order12 = Order.new(book3, reader7, Time.new(2012, 10, 11))
order13 = Order.new(book4, reader1, Time.new(2012, 10, 11))
order14 = Order.new(book4, reader2, Time.new(2012, 10, 11))
order15 = Order.new(book5, reader1, Time.new(2012, 10, 11))
order16 = Order.new(book5, reader2, Time.new(2012, 10, 11))

orders = []
orders << order1 << order2 << order3 << order4 << order5 << order6 << order7 << order8 << order9 << order10 << order11 << order12 << order13 << order14 << order15 << order16

library = Library.new(books, orders, readers, authors)

File.open('../test.data', 'w') {|file| file.write library.to_yaml}
hash_from_file = YAML::load_file '../test.data'
puts hash_from_file.class
