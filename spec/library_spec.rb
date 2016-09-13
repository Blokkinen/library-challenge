require './lib/library.rb'

describe Library do

  it 'should be able to see a collection of books in the library' do
    expect(subject.items).to be_truthy
end

  it 'should allow person to checkout items' do
    expect(subject.checkout_items).to eq checkout
  end
end
