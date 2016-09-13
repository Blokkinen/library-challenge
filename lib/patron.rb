require 'yaml'

class Patron
  attr_accessor :book_shelf

  def initialize
    @book_shelf = []
  end
end
