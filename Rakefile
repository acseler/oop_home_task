begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  desc 'Default task'
  task :default => :spec
  rescue LoadError
  # no rspec available
end

require './lib/file_helper.rb'
require './lib/address.rb'
require './lib/author.rb'
require './lib/book.rb'
require './lib/library.rb'
require './lib/order.rb'
require './lib/reader.rb'
require './lib/statistics.rb'
desc 'Run library project'
task :run do
  library = FileHelper.read_library_from_file('test.data')
  puts "The most popular book is '#{library.most_popular_book}'."
  puts "#{library.who_often_takes_the_book} often take books."
  puts "#{library.who_read_one_of_three} read one of three the most popular books."
end
