require './lib/library.rb'

describe Library do

  it 'should be able to see a collection of books in the library' do
    expect(subject.items).to be_truthy

  end
end
