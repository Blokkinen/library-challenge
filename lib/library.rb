require 'yaml'
require 'Date'

class Library
  attr_accessor :books

  def initialize
    @books = YAML.load_file('./lib/data.yml')
  end

  def checkout(book_to_checkout)
    book_to_checkout[:available] = false
    update_yaml_file
    return true
  end

  def search(search_term)
    @books.detect { |obj| obj[:item][:title].include? search_term  }
  end
  private

  def update_yaml_file
    File.open('./lib/data.yml', 'w') { |f| f.write @books.to_yaml }
  end

  def due_date(set_due_date)
    set_due_date[:return_date] = Date.today.next_month
    update_yaml_file
  end

end
