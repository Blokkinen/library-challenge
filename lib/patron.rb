#require './library.rb'

class Patron
  attr_accessor :bookshelf

  def initialize
    @bookshelf = []
  end

  def check_if_present(book)
    @bookshelf.push {}

  end

end
