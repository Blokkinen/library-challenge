#require './library.rb'

class Patron
  attr_accessor :bookshelf

  def initialize
    @bookshelf = []
  end
end
