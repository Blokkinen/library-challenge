require './lib/library.rb'

describe Library do

  it 'should have 10 books available' do
    expect(subject.books.count).to eq 10
  end

  it 'should be able to see info about title and author' do
    expect(subject.books[0][:item][:title]).to eq "The notebook"
    expect(subject.books[0][:item][:author]).to eq "Nicholas Sparks"
  end

  it 'should respond to #checkout' do
    expect(subject).to respond_to :checkout
  end

  it 'shoud return a book when searched' do
    expect_search_result = {:item=>{:title=>"One for the money", :author=>"Janet Evanovich"}, :available=>true, :return_date=>nil}
    expect(subject.search('money')).to eq expect_search_result
  end

  it 'should allow person to checkout items' do
    book = subject.search('Trump')
    expect(subject.checkout(book)).to eq true
  end

  #book_i_want = subject.search('Trump')
  #subject.checkout(book_i_want)
end
