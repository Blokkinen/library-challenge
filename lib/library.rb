require 'yaml'

class Library
  attr_accessor :items

  def initialize
    @items = YAML.load_file('./lib/data.yml')
  end

  def checkout_items
    @items = checkout
 end
end
