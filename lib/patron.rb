require 'yaml'

class Patron

  def initialize
    @books = YAML.load_file('../lib/data.yml')
  end

  def show_books
    collection = YAML.load_file('../lib/data.yml')
  end
end
