# Author class
class Author
  attr_accessor :name, :biography

  def initialize(name, biography)
    @name = name
    @biography = biography
  end

  def to_s
    "Author => {name : #{@name}, biography : #{@biography}}"
  end
end
